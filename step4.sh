#!/bin/bash
#PBS -q workq
#PBS -A loni_loniadmin1
#PBS -l nodes=1:ppn=20
#PBS -l walltime=00:15:00
#PBS -N step4
#PBS -o step4.out
#PBS -j oe

module load python/2.7.12-anaconda-tensorflow
source activate /usr/local/packages/python/2.7.12-anaconda-wu/
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification/lib:$PATH
export PATH=/usr/local/packages/python/2.7.12-anaconda-wu/wuportal/Classification:$PATH

cd $PBS_O_WORKDIR

__main__MDS.py --path "$PWD/" --steps 5 --sample_name t21

