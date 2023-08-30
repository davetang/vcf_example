if [[ ! -f ERR031940_1.fastq.gz ]]; then
   ascp -QT -l 300m -P33001 -i ${HOME}/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:vol1/fastq/ERR031/ERR031940/ERR031940_1.fastq.gz .
fi
if [[ ! -f ERR031940_2.fastq.gz ]]; then
   ascp -QT -l 300m -P33001 -i ${HOME}/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:vol1/fastq/ERR031/ERR031940/ERR031940_2.fastq.gz .
fi
