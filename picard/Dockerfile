FROM anapsix/alpine-java


ENV version 2.18.26

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
