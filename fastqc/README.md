## Dockerized  [FastQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)


### Usage:

Docker Pull Command:

```
docker pull alexcoppe/fastqc
```

Example (process all gzipped fastq files in current directory):

```
docker run -it --rm  -v $(pwd):/data  alexcoppe/fastqc  data/*.fastq.gz
```
