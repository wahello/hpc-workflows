#!/bin/bash
#SBATCH -J MasterSlave
#SBATCH -A uoa99999         # Project Account
#SBATCH --time=01:00:00     # Walltime
#SBATCH --ntasks=48         # number of tasks
#SBATCH --mem-per-cpu=1G  # memory/cpu 
source /etc/profile
/share/SubmitScripts/slurm/multi-prog-mpi.sl
srun --multi-prog multi-mpi.conf
