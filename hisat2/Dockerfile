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
    && mkdir /hisat \
    && cd hisat2 \
    && make -j 16 \
    && chmod 750 /usr/bin/launch_hisat2.sh \
    && mv hisat2 hisat2-align-s hisat2-align-l hisat2_extract_splice_sites.py hisat2_extract_exons.py hisat2-build hisat2-build-l hisat2-build-new hisat2-build-s hisat2-inspect hisat2-inspect-l hisat2-inspect-s hisat2-repeat hisat2_extract_snps_haplotypes_UCSC.py hisat2_extract_snps_haplotypes_VCF.py hisat2_read_statistics.py hisat2_simulate_reads.py /hisat \
    && rm -rf /hisat2 \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["bash", "/usr/bin/launch_hisat2.sh"]
