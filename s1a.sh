#!/bin/bash
#PBS -q workq
#PBS -A loni_loniadmin1
#PBS -l nodes=1:ppn=20
#PBS -l walltime=00:15:00
#PBS -N step1
#PBS -o step1.out
#PBS -j oe

module load python/2.7.12-anaconda-tensorflow
source activate /usr/local/packages/python/2.7.12-anaconda-wu/
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Sample_Generation/:$PATH
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification/lib:$PATH
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification:$PATH

cd $PBS_O_WORKDIR

generate_samples.py --sample_name t21 --path "$PWD/"

#key_generation_parallel_size_gap.py --path ./ --sample_name t21 #--is_chain

#__main__.py --path ./ --sample_name ./t21 
