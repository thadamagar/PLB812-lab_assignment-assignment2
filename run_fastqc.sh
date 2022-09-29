#!/bin/bash --login
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100GB
#SBATCH --job-name run_fastqc
#SBATCH --output=%x-%j.SLURMout
#change to current working directory
cd ${PBS_O_WORKDIR}
#Add conda(fastqc) environment to path
export PATH=“${HOME}/miniconda3/envs/plb812/bin:${PATH}
export LD_LIBRARY_PATH=“${HOME}//envs/plb812/lib:${LD_LIBRARY_PATH}”
#code to change fastq to fastqc file
fastqc -f fastq -o /mnt/home/thadaraj/mydirectory/  /mnt/home/thadaraj/RajuSRRfiles/*.fastq