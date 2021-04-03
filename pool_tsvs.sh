# Pools all tsv files into a papers_as_tsv directory
# Need to manually make year's pool directory before running.

year=2019
for month in {1..12}
do

cd /xdisk/guangyao/REACH2/mk_jars/all_fat_jars/${year}_${month}/output/
cp *-arizona-out.tsv /xdisk/guangyao/REACH2/Warehouse/paper_pools/${year}

done
