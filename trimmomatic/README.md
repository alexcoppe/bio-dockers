## Dockerized  [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)
[Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic) A flexible read trimming tool for Illumina NGS data.


### Usage:

Docker Pull Command:

```
docker pull alexcoppe/trimmomatic
```

Example (process paired-end sequencing 1.fastq.gz and 2.fastq.gz):

```
docker run --rm -it -v $(pwd):/working alexcoppe/trimmomatic  PE -phred33 /working/1.fastq.gz /working/2.fastq.gz /working/output_forward_paired.fq.gz /working/output_forward_unpaired.fq.gz /working/output_reverse_paired.fq.gz  /working/output_reverse_unpaired.fq.gz ILLUMINACLIP:/opt/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAIL ING:3  SLIDINGWINDOW:4:15 MINLEN:36
```
