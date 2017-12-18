FROM anapsix/alpine-java:8

ENV package_version 4_3t

ADD https://downloads.sourceforge.net/project/snpeff/snpEff_v${package_version}_core.zip /tmp/


RUN cd /tmp/ && unzip snpEff_v${package_version}_core.zip \
        && rm snpEff_v${package_version}_core.zip

ENTRYPOINT ["java", "-jar", "/tmp/snpEff/SnpSift.jar"]
