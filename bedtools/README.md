## Dockerized  [bedtools](http://bedtools.readthedocs.io/en/latest/index.html)

[bedtools] (http://bedtools.readthedocs.io/en/latest/index.html) bedtools: a powerful toolset for genome arithmetic

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/bedtools
```

Example:

```
docker run --rm -it -v $(pwd):/data alexcoppe/bedtools intersectBed -a /data/sample_a.vcf -b /data/sample_b.vcf
```
