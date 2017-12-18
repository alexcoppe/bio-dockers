FROM alpine


ENV version 0.7.17

ADD http://downloads.sourceforge.net/project/bio-bwa/bwa-${version}.tar.bz2 /tmp/

RUN apk add --update --no-cache ncurses \
        && apk add --virtual=deps --update --no-cache  musl-dev zlib-dev make  gcc \
        && cd /tmp/ && tar xjvf bwa-${version}.tar.bz2 \
        && cd /tmp/bwa-${version} \ 
        && sed -i '1i#include <stdint.h>' kthread.c \
        && sed -i[.bak] "s/u_int32_t/uint32_t/g" *.c  \
        && sed -i[.bak] "s/u_int32_t/uint32_t/g" *.h  \
        && make \
        && mv /tmp/bwa-${version}/bwa /usr/bin \
        && rm -rf /var/cache/apk/* /tmp/* \
        && apk del deps

ENTRYPOINT ["/usr/bin/bwa"]
