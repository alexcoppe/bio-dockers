## Dockerized  [Varscan](http://dkoboldt.github.io/varscan/)

[VarScan](http://dkoboldt.github.io/varscan/) is a software for variant detection in massively parallel sequencing data.

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/varscan
```

Example:

```
#Report germline, somatic, and LOH events at positions where both normal and tumor samples have sufficient coverage.

docker run --rm -it -v $(pwd):/data  alexcoppe/varscan somatic /data/normal.pileup /data/tumor.pileup /data/output.basename
```
