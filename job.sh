#!/bin/bash
##----------------------- Start job description -----------------------
#SBATCH --ntasks=1
#SBATCH --partition=standard-gpu
#SBATCH --gres=gpu:v100
#SBATCH --job-name=politices
#SBATCH --mem-per-cpu=10000
#SBATCH --time=12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcalleja@fi.upm.es
#SBATCH --output=out-%j.log
##------------------------ End job description ------------------------

module purge && module load CUDA


source /home/s730/s730251/projects/env_politic/bin/activate

# rutas absolutas! 
srun python3 trainer.py

deactivate
