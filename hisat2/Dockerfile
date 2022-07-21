FROM alpine

# To run sh on the container 
# docker run --rm -it --entrypoint sh hisat2
#
# To enter a running container 
# docker exec -it <container-name-or-id> sh

COPY launch_hisat2.sh /usr/bin/launch_hisat2.sh

ENV PATH="/hisat2:${PATH}"

RUN  apk add --update --no-cache perl python3 bash  \
    && apk add --update --no-cache --virtual=deps g++ make git \
    && git clone https://github.com/DaehwanKimLab/hisat2.git \
    && cd hisat2 \
    && make -j 16 \
    && chmod 750 /usr/bin/launch_hisat2.sh \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && rm -rf /var/cache/apk/*

#CMD ["hisat2"]
ENTRYPOINT ["bash", "/usr/bin/launch_hisat2.sh"]
