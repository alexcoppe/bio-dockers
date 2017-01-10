FROM anapsix/alpine-java:8

ENV version 2.4.3

ADD https://github.com/dkoboldt/varscan/raw/master/VarScan.v${version}.jar /opt

RUN cd /opt/ && mv /opt/VarScan.v${version}.jar /opt/VarScan.jar

ENTRYPOINT ["java", "-jar", "/opt/VarScan.jar"]
