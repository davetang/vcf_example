# README

Convert to hg38.

```console
./liftOver 20130108.exome.targets.bed hg19ToHg38.over.chain.gz 20130108.exome.targets.hg38.bed 20130108.exome.targets.hg38.unmapped.bed

cat 20130108.exome.targets.hg38.bed | sort -k1,1V -k2,2n > 20130108.exome.targets.hg38.sorted.bed
```
