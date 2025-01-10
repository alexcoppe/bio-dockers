## Dockerized  [RNAsnp](https://rth.dk/resources/rnasnp/software.php)
RNAsnp an efficient detection of local RNA secondary structure changes induced by SNPs

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/rnasnp
```

Example:

```
docker run --rm -it  -v $(pwd):/w  rnasnp -f /w/examples/seq4.txt -s /w/examples/snp4.txt -m 2
```

Input files:

    -f File containing the input sequence in FASTA format

    -s File containing the list of SNP

Example of list of SNPs

```
G70T-A1400G
G10T
```

Result:

```
SNP	w	Slen	GC	max_k	d_max	p-value	interval	d	p-value
G70T-A1400G	200	3490	0.5213	1337	3.6486	0.3108	1337-1417	0.0549	0.4518
G10T	200	3490	0.5524	1	7.4415	0.0706	1-39	0.1487	0.0759
```
