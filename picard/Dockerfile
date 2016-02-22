FROM anapsix/alpine-java


ENV package_name picard-tools-2.1.0

ADD https://github.com/broadinstitute/picard/releases/download/2.1.0/${package_name}.zip /tmp/

RUN cd /opt/ && unzip /tmp/${package_name}.zip \
	&& rm /tmp/${package_name}.zip \
	&& mv /opt/${package_name} /opt/picard-tools

ENTRYPOINT ["java", "-jar", "/opt/picard-tools/picard.jar"]
