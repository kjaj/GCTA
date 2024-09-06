#!/bin/bash
#SBATCH --partition=day
#SBATCH --mem=80g
#SBATCH -t 200:00
#SBATCH --cpus-per-task=2
#SBATCH -o gcta2.log

gcta_path=/gpfs/gibbs/pi/huckins/software/gcta-1.94.1-linux-kernel-3-x86_64/

for group in {SAS,AMR,EAS,EUR,AFR}
do

${gcta_path}gcta64 --mgrm ${group}_grm_chrs.txt --make-grm --out UKB_${group}.flashpca --thread-num 10

done 
