FROM alpine

ENV version 2.4.1

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
        && cd /tmp/bamtools && rm -rf CMakeLists.txt LICENSE README build docs src \
        && apk del deps

ENTRYPOINT ["/tmp/bamtools/bin/bamtools"]
