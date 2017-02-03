## Dockerized  [SnpSift](http://snpeff.sourceforge.net/SnpSift.html)

### Usage:

#### Docker Pull Command:

```
docker pull alexcoppe/snpsift
```

#### Example:

##### Filtering variants from a VCF based on call quality.
The VCF is in a Docker engine’s host directory mounted into the container using the -v flag.

```
docker run --rm -it -v $(pwd):/data alexcoppe/snpsift filter '( QUAL >= 30 )' /data/test.vcf
```
