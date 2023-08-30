#!/usr/bin/env bash

nextflow run nf-core/sarek \
   -profile test,docker \
   --outdir sarek_test
