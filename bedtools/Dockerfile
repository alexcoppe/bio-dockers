FROM alpine:3.4


ENV version 2.27.1

ADD https://github.com/arq5x/bedtools2/releases/download/v${version}/bedtools-${version}.tar.gz /tmp/
COPY launch_bedtools.sh /tmp/

RUN  apk add --update --no-cache libstdc++ bash python \
    && apk add --update --no-cache --virtual=deps g++ make zlib-dev \
    && cd /tmp/ \
    && tar xzvf bedtools-${version}.tar.gz \
    && cd bedtools2 \
    && make \
    && chmod 750 /tmp/launch_bedtools.sh \
    && rm /tmp/bedtools-${version}.tar.gz \
    && rm -rf /tmp/bedtools2/test \
    && rm -rf /tmp/bedtools2/src \
    && rm -rf /tmp/bedtools2/docs \
    && apk del deps


CMD ["mapBed", "-h"]
ENTRYPOINT ["bash", "/tmp/launch_bedtools.sh"]
