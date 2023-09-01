#!/usr/bin/env bash

set -euo pipefail

script_dir=$(dirname $(realpath $0))

genome=GRCh38

if [[ ! -d ${script_dir}/../data/${genome} ]]; then
   mkdir ${script_dir}/../data/${genome}
fi

aws s3 cp --recursive s3://ngi-igenomes/igenomes/Homo_sapiens/GATK/GRCh38 ${script_dir}/../data/${genome} --no-sign-request
