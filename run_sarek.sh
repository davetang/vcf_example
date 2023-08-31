#!/usr/bin/env bash

nextflow run nf-core/sarek \
   -resume \
   -profile docker \
   --genome GATK.GRCh38 \
   --wes true \
   --intervals data/region/20130108.exome.targets.hg38.sorted.bed \
   --tools haplotypecaller \
   --input samplesheet.csv \
   --outdir results
