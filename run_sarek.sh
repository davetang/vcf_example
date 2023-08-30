#!/usr/bin/env bash

nextflow run nf-core/sarek \
   -profile docker \
   --genome GATK.GRCh38 \
   --input samplesheet.csv \
   --outdir results
