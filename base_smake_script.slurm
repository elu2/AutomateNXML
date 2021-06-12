#!/bin/bash
#SBATCH --job-name=get_0000_0_papers
#SBATCH --mincpus=3
#SBATCH --ntasks=1
#SBATCH --mem=18GB
#SBATCH --time=96:00:00
#SBATCH --partition=standard
#SBATCH --account=guangyao

cd /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/0000_0/papers/
conda init bash
source ~/.bashrc
conda activate /home/u26/elu2/.conda/envs/snakemake_env

snakemake --unlock -s snakefile.nxml
snakemake --keep-going -s snakefile.nxml
