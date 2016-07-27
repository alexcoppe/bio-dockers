## Dockerized  [samtools](http://www.htslib.org/)

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/samtools
```

Example (view a region of a bam file):

```
docker run --rm -it -v $(pwd):/data alexcoppe/samtools view /data/sample.bam seq2:450-550
```
