## Dockerized  [VarDictJava](https://github.com/AstraZeneca-NGS/VarDictJava)

[VarDictJava] (https://github.com/AstraZeneca-NGS/VarDictJava) is a variant discovery program written in Java and Perl. It is a partial Java port of [VarDict variant caller] (https://github.com/AstraZeneca-NGS/VarDict).

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/vardict
```

Example of single sample mode:

```
docker run -v $(pwd):/data -v  ~/annotation:/annotation -it --rm alexcoppe/vardict VarDict -G /annotation/hg19.fa -f 0.01 -N sample_1 -b /data/sample_1.bam -z -c 1 -S 2 -E 3 -g 4  /annotation/exome_kit.bed  | docker run -i alexcoppe/vardict teststrandbias.R | docker run -i alexcoppe/vardict var2vcf_valid.pl -N sample_1 -E -f 0.01
```
