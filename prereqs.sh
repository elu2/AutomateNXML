# adds necessary files to run snakefile.nxml

year=2018

for month in {1..12}
do

# Put pbs script to run snakemake into specified directory.
sed "s/0000_0/${year}_${month}/g" base_smake_script.slurm > /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/smake_script.slurm

# Put fetch_nxml.py into specified directory's papers directory.
cp fetch_nxml.py /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/papers/

# Put snakefile.nxml into specified directory's papers directory.
sed "s/0000_0/${year}_${month}/g" base_snakefile.nxml > /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/papers/snakefile.nxml

done
