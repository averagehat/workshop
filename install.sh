#!/bin/bash
set -e
set -x

if [[ -z "$1" ]]; then
    echo "Requires install prefix for new miniconda as an argument. i.e. /home/user/vartable/miniconda"
fi 
    
curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda3.sh
bash miniconda3.sh -p "$1" -b 

export PATH=$1/bin/:$PATH

conda update -y -n base -c defaults conda # want conda 4.7
#conda create -y --name vartable python=3.7
#conda activate vartable

conda config --add channels bioconda
conda config --add channels conda-forge

conda install -y --file conda-requirements.txt
pip install -r pip-requirements.txt
python setup.py install

echo 'add the following to the end of you ~/.bashrc:  "export PATH=${1}/bin:\$PATH"'
