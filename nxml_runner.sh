# Runs smake_script to get nxml for each month in year

year=2018

for month in {1..12}
do

cd /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/
qsub smake_script.pbs

done
