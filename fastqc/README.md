## Dockerized  [FastQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)


### Usage:

Docker Pull Command:

```
docker pull alexcoppe/fastqc
```

Example (process reads.fastq.gz):

```
docker run -it --rm  -v $(pwd):/data  alexcoppe/fastqc  data/reads.fastq.gz
```
