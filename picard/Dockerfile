FROM anapsix/alpine-java


ENV version 2.5.0

ADD https://github.com/broadinstitute/picard/releases/download/${version}/picard-tools-${version}.zip /tmp/

RUN cd /opt/ && unzip /tmp/picard-tools-${version}.zip \
	&& rm /tmp/picard-tools-${version}.zip \
	&& mv /opt/picard-tools-${version} /opt/picard-tools

ENTRYPOINT ["java", "-jar", "/opt/picard-tools/picard.jar"]
