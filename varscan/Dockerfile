FROM anapsix/alpine-java:8

ENV version 2.3.9

ADD http://downloads.sourceforge.net/project/varscan/VarScan.v${version}.jar /opt

RUN cd /opt/ && mv /opt/VarScan.v${version}.jar /opt/VarScan.jar

ENTRYPOINT ["java", "-jar", "/opt/VarScan.jar"]
