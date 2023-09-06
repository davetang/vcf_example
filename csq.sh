#!/usr/bin/env bash

set -euo pipefail

vcf=vcf/S1.haplotypecaller.filtered.phased.vcf.gz
ref=data/Homo_sapiens/GATK/GRCh38/Sequence/WholeGenomeFasta/Homo_sapiens_assembly38.fasta
gff=data/annotation/Homo_sapiens.GRCh38.110.chr.gff3.gz
out=vcf/S1.haplotypecaller.filtered.phased.csq.vcf.gz

#   -p, --phase a|m|r|R|s             How to handle unphased heterozygous genotypes: [r]
#                                       a: take GTs as is, create haplotypes regardless of phase (0/1 -> 0|1)
#                                       m: merge *all* GTs into a single haplotype (0/1 -> 1, 1/2 -> 1)
#                                       r: require phased GTs, throw an error on unphased het GTs
#                                       R: create non-reference haplotypes if possible (0/1 -> 1|1, 1/2 -> 1|2)
#                                       s: skip unphased hets

bcftools csq -p a -f ${ref} -g ${gff} ${vcf} -o ${out} -O z
bcftools index ${out}

>&2 echo Done
exit 0
