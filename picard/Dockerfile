FROM anapsix/alpine-java


ENV version 2.9.2

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
