FROM alpine

MAINTAINER Alessandro Coppe

ENV version 2.5.1

ADD https://github.com/pezmaster31/bamtools/archive/v${version}.tar.gz /tmp/

RUN apk add --update --no-cache zlib-dev g++ \
        && apk add --virtual=deps --update --no-cache cmake  make \
        && cd /tmp && tar xzvf v${version}.tar.gz \
        && rm v${version}.tar.gz \
        && mv bamtools-${version} bamtools \
        && cd bamtools \
        && mkdir build \
        && cd build \
        && cmake .. \
        && make  \
        && cd /tmp/bamtools && rm -rf CMakeLists.txt LICENSE README docs src \
        && apk del deps

ENTRYPOINT ["/tmp/bamtools/build/src/toolkit/bamtools"]
