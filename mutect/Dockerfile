FROM anapsix/alpine-java:7

ENV package_name muTect-1.1.5

ADD https://github.com/broadinstitute/mutect/releases/download/1.1.5/muTect-1.1.5-bin.zip /tmp/

RUN cd /opt/ && unzip /tmp/${package_name}-bin.zip \
	&& rm /tmp/${package_name}-bin.zip LICENSE.TXT version.txt \
	&& mv /opt/${package_name}.jar /opt/mutect.jar

ENTRYPOINT ["java", "-jar", "/opt/mutect.jar"]
