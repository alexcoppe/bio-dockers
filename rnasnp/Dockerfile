FROM alpine

ENV RNASNPPATH=/RNAsnp-1.2

ADD https://rth.dk/resources/rnasnp/software_src/RNAsnp-1.2.tar.gz /

RUN apk add --virtual=deps --update --no-cache make tar gzip gcc g++ \
        && cd / && tar xzvf RNAsnp-1.2.tar.gz \
        && cd /RNAsnp-1.2 \
        && ./configure \
        && make \
        && make install \
        && make clean \
        && mkdir /lib/distParam \
        && apk del deps

ENTRYPOINT ["/usr/local/bin/RNAsnp"]

