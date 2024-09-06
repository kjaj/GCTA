#!/bin/bash
#SBATCH --partition=day
#SBATCH --mem=80g
#SBATCH -t 200:00
#SBATCH --cpus-per-task=2
#SBATCH -o gcta1.log

dir=/gpfs/gibbs/pi/huckins/kjj28/UKB_analyses/GWAS/GRM_step1

gcta_path=/gpfs/gibbs/pi/huckins/software/gcta-1.94.1-linux-kernel-3-x86_64/

for group in {SAS,AMR,EAS,EUR,AFR,white_british}
do
for i1 in {1..22}
do

${gcta_path}gcta64 --bfile ${dir}/UKB_${group}.flashpca --chr ${i1} --maf 0.01 --make-grm --out UKB_${group}.gcta_chr${i1} --thread-num 10

done
done
