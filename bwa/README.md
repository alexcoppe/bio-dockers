## Dockerized  [bwa](http://bio-bwa.sourceforge.net/)

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/bwa
```

Example (bwa mem for paired-end Illumina reads):

```
docker run --rm -it -v  ~/reference:/reference -v $(pwd):/data  alexcoppe/bwa mem -M -t 8 reference/reference /data/1.fastq /data/2.fastq  > mapping.sam

```
