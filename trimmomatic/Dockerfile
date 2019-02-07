FROM anapsix/alpine-java:jdk8


ENV trimmomatic_version 0.38

ADD http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-${trimmomatic_version}.zip /tmp/

RUN cd /tmp/ && unzip /tmp/Trimmomatic-${trimmomatic_version}.zip \
    && mv /tmp/Trimmomatic-${trimmomatic_version}/trimmomatic-${trimmomatic_version}.jar /opt/trimmomatic.jar \
    && rm -rf /tmp/Trimmomatic-${trimmomatic_version}.zip \
    && mv /tmp/Trimmomatic-${trimmomatic_version}/adapters /opt/ \
    && rm -rf /tmp/Trimmomatic-${trimmomatic_version}

ENTRYPOINT ["java", "-jar", "/opt/trimmomatic.jar"]
