#!/bin/bash

model=${1:-gcn}
dataset=${2:-products}
device=${3:-0}

echo "Model: "$model
echo "Dataset: "$dataset
echo "GPU: "$device

storage='/ssd_dataset/graph_dataset'
echo 'Storage: '$storage

date=`date '+%Y-%m-%d-%H-%M-%S'`
#echo "date: "$date

log_file=""
if [ -z $log_file ]; then
  log_file="${date}_${model}_${dataset}.log"
fi
# echo "log file:"${log_file}

CUDA_VISIBLE_DEVICES=$device python main_large.py \
    model=$model \
    dataset=$dataset \
    root=$storage # 2>&1 | tee -a -i $log_file