# Get all PMCIDs in a time frame and put them into their respective papers files.
prev_year=2018
year=2018

sed -i "s/${prev_year}/${year}/g" snakefile.pmcid
snakemake -s  snakefile.pmcid

for month in {1..12}
do

mv ${year}_${month}_ids /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/papers/

done
