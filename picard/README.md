## Dockerized  [picard](http://broadinstitute.github.io/picard/)

[![](https://badge.imagelayers.io/alexcoppe/picard:latest.svg)](https://imagelayers.io/?images=alexcoppe/picard:latest 'Get your own badge on imagelayers.io')

### Usage:

Docker Pull Command:

```
docker pull alexcoppe/picard
```

Example:

```
docker run --rm -it -v $(pwd):/data  alexcoppe/picard CreateSequenceDictionary  R=/data/reference.fa OUTPUT=/data/reference.dict
```
