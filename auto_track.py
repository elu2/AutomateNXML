import pandas as pd
import os
import time
import subprocess


# Returns true if a job is still running
def running():
    squeue = os.popen("squeue -u elu2").read()
    with open("squeue.csv", "w") as file:
        file.write(squeue)
    df = pd.read_csv("squeue.csv")
    
    # Greater than 1 because the tracking job counts as well
    in_prog = df.shape[0] > 1
    return in_prog


count = 1
while count < 4:
    while running():
        # Wait a half hour...
        time.sleep(1800)
        subprocess.run(["bash", "nxml_runner.sh"])
    count += 1
