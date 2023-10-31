# LMC: Fast Training of GNNs via Subgraph Sampling with Provable Convergence

This is the code of paper 
**LMC: Fast Training of GNNs via Subgraph Sampling with Provable Convergence**. 
*Zhihao Shi, Xize Liang, Jie Wang.* ICLR 2023. [[arXiv](https://arxiv.org/abs/2302.00924)]
[[ICLR-Official](https://openreview.net/forum?id=5VBBA91N6n)]

## Dependencies (Patched)
- Python 3.6
- PyTorch 1.8.0 (CUDA 11.1)
- torch-geometric 2.0.3
- ogb 1.3.6
- hydra-core 1.3.2


## Dependencies (Previous)
- Python 3.7
- PyTorch 1.9.0
- torch-geometric 1.7.2
- ogb 1.3.3
- hydra-core 1.1.0


## Reproduce the Results

### 1. Compile the subgraph sampling codes
To compile the subgraph sampling codes in the `csrc` directory, run the following commands.

```shell script
cd code
pip install -e .
```

### 2. Reproduce the Results 
To reproduce the results,
please run the following commands.

```shell script
CUDA_VISIBLE_DEVICES=0 python main_large.py dataset=arxiv  model=gcn  model.json='[PATH of CODE]/json/gcn/arxiv/variant.json'
```
OR run,
```shell script
# Run from variant.json with the given model and dataset
./scripts/run_variant.sh gcn arxiv 0

# Run from conf_large with given model and dataset
./scripts/run.sh gcn products 0
```

## Citation
If you find this code useful, please consider citing the following paper.
```
@inproceedings{
shi2023lmc,
title={{LMC}: Fast Training of {GNN}s via Subgraph Sampling with Provable Convergence},
author={Zhihao Shi and Xize Liang and Jie Wang},
booktitle={International Conference on Learning Representations},
year={2023},
url={https://openreview.net/forum?id=5VBBA91N6n}
}
```

## Acknowledgement
We refer to the code of [PyGAS](https://github.com/rusty1s/pyg_autoscale). Thanks for their contributions.






