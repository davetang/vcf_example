#!/usr/bin/env bash

if [[ ! -f SRR622461_1.fastq.gz ]]; then
   ascp -QT -l 300m -P33001 -i ${HOME}/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:vol1/fastq/SRR622/SRR622461/SRR622461_1.fastq.gz .
fi
if [[ ! -f SRR622461_2.fastq.gz ]]; then
   ascp -QT -l 300m -P33001 -i ${HOME}/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:vol1/fastq/SRR622/SRR622461/SRR622461_2.fastq.gz .
fi
