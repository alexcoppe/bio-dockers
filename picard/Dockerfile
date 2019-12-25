FROM anapsix/alpine-java


ENV version 2.21.6

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
