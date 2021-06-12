#!/bin/bash
#SBATCH --job-name=make_jars
#SBATCH --mincpus=7
#SBATCH --ntasks=1
#SBATCH --mem=42GB
#SBATCH --time=96:00:00
#SBATCH --partition=standard
#SBATCH --account=guangyao

cd /xdisk/guangyao/REACH2/mk_jars/base_reach/reach/

module load scalapack/2.0.2
module load sbt/1.3.13

# Edit year here:
year=2015

# Edit month range here {x..y} until 12:
for month in {1..12}
do

# Makes dir's for months in year
mkdir /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}

# and puts a papers dir in it
mkdir /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/papers

# edits the base slurm script...
# changes job name...
sed -i 's|#SBATCH --job-name=.*|#SBATCH --job-name=REACH_'"${year}"'_'"${month}"'|' slurm_script
# ... and directory to cd to fat jar...
sed -i 's|cd /xdisk/.*|cd /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/'"${year}"'_'"${month}"'|' slurm_script

# ... and copies the edited slurm script to be in the directory as well
cp slurm_script /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/

# Replace root path in application.conf
sed -i 's|/xdisk/guangyao/.*|/xdisk/guangyao/REACH2/mk_jars/all_fat_jars/'"${year}"'_'"${month}"'|' main/src/main/resources/application.conf

# Construct fat jar
sbt assembly

# Move the fat jar out
mv target/scala-2.12/*FAT.jar /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/

done
