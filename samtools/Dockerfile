FROM alpine


ENV version 1.8

ADD https://github.com/samtools/samtools/releases/download/${version}/samtools-${version}.tar.bz2 /tmp

RUN apk add --update --no-cache ncurses libbz2 xz zlib \
        && apk add --virtual=deps --update --no-cache ncurses-dev musl-dev g++ make zlib-dev bzip2-dev xz-dev \
        && cd /tmp/ && tar xjvf samtools-${version}.tar.bz2 \
        && cd /tmp/samtools-${version} && make \
        && mv /tmp/samtools-${version}/samtools /usr/bin \
        && rm -rf /var/cache/apk/* /tmp/* \
        && apk del deps

CMD ["--help"]
ENTRYPOINT ["/usr/bin/samtools"]
