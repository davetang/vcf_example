#!/usr/bin/env bash

set -euo pipefail

script_dir=$(dirname $(realpath $0))

genome=GRCh38

if [[ ! -d ${script_dir}/../data/Homo_sapiens/GATK/${genome} ]]; then
   mkdir -p ${script_dir}/../data/Homo_sapiens/GATK/${genome}
fi

aws s3 cp --recursive s3://ngi-igenomes/igenomes/Homo_sapiens/GATK/GRCh38 ${script_dir}/../data/Homo_sapiens/GATK/${genome} --no-sign-request
