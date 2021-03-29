# Removes HPC output files

year=2019
for month in {1..12}
do

cd /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/
rm get_*

done
