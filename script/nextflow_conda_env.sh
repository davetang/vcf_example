#!/usr/bin/env bash

mamba create -y \
   -n nextflow \
   -c Bioconda -c conda-forge \
   nextflow
