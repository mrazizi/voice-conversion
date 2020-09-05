#!/bin/bash

#SBATCH -p fatq
#SBATCH -n 1
#SBATCH -c 10
#SBATCH -o log/pre.log


source activate dl

python preprocess.py \
    --num_workers 10 \
    --name cmu_arctic \
    --in_dir datasets/arctic \
    --out_dir datasets/arctic_out


