## Dockerized  [gatk](https://software.broadinstitute.org/gatk/)


### Usage:

Docker Pull Command:

```
docker pull alexcoppe/gatk
```

Example (run mutect2 on tumor-normal pair):

```
docker run -it --rm  -v $(pwd):/data alexcoppe/gatk -T MuTect2   -R /data/reference.fa -I:tumor /data/tumor.bam -I:normal /data/normal.bam -L /data/targets.interval_list.bed -o /data/output.vcf

```
