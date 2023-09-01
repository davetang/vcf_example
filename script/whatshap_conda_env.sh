#!/usr/bin/env bash

mamba create -y \
   -n whatshap \
   -c Bioconda -c conda-forge \
   whatshap bcftools
