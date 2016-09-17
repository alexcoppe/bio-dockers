## Dockerized  [FASTX-Toolkit](http://hannonlab.cshl.edu/fastx_toolkit/index.html) (lite version)

[FASTX-Toolkit] (http://hannonlab.cshl.edu/fastx_toolkit/index.html) FASTQ/A short-reads pre-processing tools lite version. This is version does not support FASTX-Toolkit commands producing charts and images in order to keep the docker images small.
The non available commands are:

* fasta_clipping_histogram
* fastq_quality_boxplot

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/fastx-toolkit-lite
```

Example:

```
docker run --rm -it -v $(pwd):/data alexcoppe/fastx-toolkit-lite fastx_quality_stats -i /data/in.fastq -o /data/output.txt
```
