FROM anapsix/alpine-java


ENV version 2.8.2

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard-${version}.jar /opt
RUN cd /opt \
    && mv picard-${version}.jar picard.jar 

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
