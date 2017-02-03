## Dockerized  [SnpEff](http://snpeff.sourceforge.net/)

### Usage:

#### Docker Pull Command:

```
docker pull alexcoppe/snpeff
```

#### Example:

##### Using SnpEff default command ('eff') to annotate variants in a VCF.
The SnpEff configuratione file (snpEff.config), the genomic data (GRCh37.75) and the VCF are in a Docker engine’s host directory mounted into the container using the -v flag.

```
docker run --rm -it -v $(pwd):/data  alexcoppe/snpeff eff -v  -c /data/snpEff.config GRCh37.75 /data/sample.vcf

```
