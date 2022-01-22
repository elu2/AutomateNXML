# Removes extra files left in papers directory.

year=2019

for month in {1..12}
do

cd /xdisk/guangyao/elu2/RV/mk_jars/all_fat_jars/${year}_${month}/papers/
rm snakefile.nxml
rm ${year}_${month}_ids
rm fetch_nxml.py

done
