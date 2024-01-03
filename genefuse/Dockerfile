FROM alpine

RUN apk add --update --no-cache --virtual=deps git g++ make \
        && apk add libstdc++ zlib-static \
        && git clone https://github.com/OpenGene/genefuse.git \
        && cd genefuse \
        && make -j 10 \
        && make install \
        && cd .. \
        && rm -rf genefuse \
        && apk del deps

ENTRYPOINT ["genefuse"]
