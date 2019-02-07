FROM anapsix/alpine-java:jdk8

ENV package_name fastqc_v0.11.8.zip

ADD http://www.bioinformatics.babraham.ac.uk/projects/fastqc/${package_name} /tmp/

RUN cd /opt/ && unzip /tmp/${package_name} \
    && rm /tmp/${package_name} \
    && apk update \
    && apk add perl \
    && chmod 750 /opt/FastQC/fastqc

CMD ["-help"]
ENTRYPOINT ["/opt/FastQC/fastqc"]
