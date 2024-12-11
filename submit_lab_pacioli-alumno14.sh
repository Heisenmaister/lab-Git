#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno14/LAB3
#SBATCH --job-name=lab3_cut
#SBATCH --output=lab3_cut_%j.out
#SBATCH --error=lab3_cut_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=1

# cortamos los archivos
for file in ./fastq/*.fastq; 
do
	./file-cut.sh "$file"
done

echo "Acabado bien"
echo
