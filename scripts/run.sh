#!/bin/bash

model=${1:-gcn}
dataset=${2:-arxiv}
device=${3:-0}

echo "Model: "$model
echo "Dataset: "$dataset
echo "GPU: "$device

current_path=`pwd`
json_path=$current_path/json/$model/$dataset/variant.json

if [ ! -f $json_path ]; then
    echo "No such json path: "$json_path
    exit 1
fi

date=`date '+%Y-%m-%d-%H-%M-%S'`
#echo "date: "$date

log_file=""
if [ -z $log_file ]; then
  log_file="${date}_${model}_${dataset}.log"
fi
echo "log file:"${log_file}

CUDA_VISIBLE_DEVICES=$device python main_large.py \
    dataset=$dataset \
    model=$model \
    model.json=$json_path 2>&1 | tee -a -i $log_file