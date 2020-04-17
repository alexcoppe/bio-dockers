FROM anapsix/alpine-java


ENV version 2.22.3

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
