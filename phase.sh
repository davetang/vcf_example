#!/usr/bin/env bash

set -euo pipefail

usage(){
   cat <<EOF

Usage: <in.vcf> <out.vcf>

EOF
exit 1
}

if [[ $# -ne 2 ]]; then
   usage
fi

infile=$1
outfile=$2
cram=results/preprocessing/recalibrated/S1/S1.recal.cram
ref=data/Homo_sapiens/GATK/GRCh38/Sequence/WholeGenomeFasta/Homo_sapiens_assembly38.fasta

bcftools view -f "PASS" ${infile} > passed.vcf
whatshap phase \
   -o ${outfile} \
   --reference ${ref} \
   passed.vcf ${cram}
bcftools index ${outfile}
rm passed.vcf
