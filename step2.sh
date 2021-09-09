#!/bin/bash
#PBS -q workq
#PBS -A loni_loniadmin1
#PBS -l nodes=1:ppn=20
#PBS -l walltime=00:15:00
#PBS -N step2
#PBS -o step2.out
#PBS -j oe

module load python/2.7.12-anaconda-tensorflow
source activate /usr/local/packages/python/2.7.12-anaconda-wu/
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification/lib:$PATH
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification:$PATH

cd $PBS_O_WORKDIR
key_generation_parallel_size_gap.py --path ./ --sample_name t21 #--is_chain

#__main__.py --path ./ --sample_name ./t21 
