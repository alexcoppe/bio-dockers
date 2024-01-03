## Dockerized  [GeneFuse](https://github.com/OpenGene/GeneFuse/tree/master)

[GeneFuse](https://github.com/OpenGene/GeneFuse/tree/master?tab=readme-ov-file) A tool to detect and visualize target gene fusions by scanning FASTQ files directly.

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/genefuse
```

Example:

```
docker run --rm -it -v $(pwd):/data acoppe/genefuse -r /data/GRCh38.fa -f /data/cancer.hg38.csv -1 /data/1.fastq -2 /data/2.fastq -u 10 -t 10 -h /data/results.html
```
