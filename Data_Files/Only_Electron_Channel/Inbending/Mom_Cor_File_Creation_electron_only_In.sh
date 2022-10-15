#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --job-name=Mom_Cors_electron_only_Inbending_GitHub_Electron_Refinement_V1_10_7_2022
#SBATCH --mail-type=ALL
#SBATCH --mail-user=richard.capobianco@uconn.edu 
#SBATCH --output=/farm_out/%u/%x-%j-%N.out
#SBATCH --error=/farm_out/%u/%x-%j-%N.err
#SBATCH --partition=production
#SBATCH --account=clas12
#SBATCH --mem-per-cpu=6000
#SBATCH --time=24:00:00
#SBATCH --array=0-173




FILES=(/lustre19/expphy/volatile/clas12/richcap/Momentum_Cors/Exclusive_RG-A_Momentum_Corrections/Data_Files/Event_Selection_Files/Only_Electron_Channel/electron_only.inb.qa.skim4_00*)
# array files (Inbending): 0-173


srun python ../../File_Creation_Final_Momentum_Corrections_Github.py In EO ${FILES[$SLURM_ARRAY_TASK_ID]}

