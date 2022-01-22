# Runs REACH. All slurm scripts for each month in a year.

year=2019
for month in {1..12}
do

cd /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/
sbatch slurm_script

done
