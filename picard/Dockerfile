FROM anapsix/alpine-java


ENV version 2.8.1

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard.jar /opt/

ENTRYPOINT ["java", "-jar", "/opt/picard.jar"]
