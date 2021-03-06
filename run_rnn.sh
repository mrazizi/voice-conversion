#!/bin/bash

#SBATCH -p 3gpuq
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH -o log/%j.log


source activate dl

python train_rnn.py \
    --ssp bdl \
    --tsp slt \
    --data_root datasets/arctic_out \
    --epochs 30 \
    --dual False \

