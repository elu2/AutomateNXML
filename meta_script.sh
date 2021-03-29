# Changes years of all scripts
year=2017

sed -i "s/year=.*/year=${year}/g" main_script.pbs
sed -i "s/year=.*/year=${year}/g" auto_id.sh
sed -i "s/year=.*/year=${year}/g" prereqs.sh
sed -i "s/year=.*/year=${year}/g" nxml_runner.sh
sed -i "s/year=.*/year=${year}/g" remove_from_papers.sh
sed -i "s/year=.*/year=${year}/g" remove_postrun.sh
sed -i "s/year=.*/year=${year}/g" sbatch_runner.sh

