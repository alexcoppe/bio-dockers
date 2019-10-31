FROM anapsix/alpine-java


ENV version 2.21.2

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
