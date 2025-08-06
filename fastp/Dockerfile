# v0.25.0

FROM alpine:latest

RUN apk add --update --no-cache git make \
        && apk add libdeflate libdeflate-dev  isa-l isa-l-dev  g++ bash  \
        && git clone https://github.com/OpenGene/fastp.git \
        && cd fastp \
        && make -j 10 \
        && mv fastp /usr/bin/ \
        && cd .. && rm -rf /fastp

ENTRYPOINT ["fastp"]
