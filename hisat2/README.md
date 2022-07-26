## Dockerized [HISAT2](http://daehwankimlab.github.io/hisat2/)

HISAT2 is a fast and sensitive alignment program for mapping next-generation sequencing reads

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/hisat2
```

Example (build the HISAT chromosome 19 index):

```
docker run --rm -it -v $(pwd):/working hisat2  hisat2-build --ss /working/splice_sites.txt --exon /working/exons.txt /working/Homo_sapiens.GRCh38.dna.chromosome.19.fa /working/tmp/hs_19 
```
