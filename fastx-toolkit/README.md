## Dockerized  [FASTX-Toolkit](http://hannonlab.cshl.edu/fastx_toolkit/index.html)

[FASTX-Toolkit] (http://hannonlab.cshl.edu/fastx_toolkit/index.html) FASTQ/A short-reads pre-processing tools

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/fastx
```

Example:

```
docker run --rm -it -v $(pwd):/data alexcoppe/fastx fastx_quality_stats -i /data/in.fastq -o /data/output.txt
```
