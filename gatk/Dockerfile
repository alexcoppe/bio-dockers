FROM anapsix/alpine-java:jdk8

ENV maven_package_name apache-maven-3.3.9
ENV gatk_dir_name gatk-protected
ENV gatk_version 3.7

ADD http://mirror.nohup.it/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip /tmp/
ADD https://github.com/broadgsa/gatk-protected/archive/${gatk_version}.zip /tmp/

RUN cd /opt/ && unzip /tmp/${maven_package_name}-bin.zip \
    && rm -rf /tmp/${maven_package_name}-bin.zip LICENSE NOTICE README.txt \
    && cd /opt/ && unzip /tmp/${gatk_version}.zip \
    && rm -rf /tmp/${gatk_version}.zip \
    && cd /opt/${gatk_dir_name}-${gatk_version} && /opt/${maven_package_name}/bin/mvn verify -P\!queue \
    && mv /opt/${gatk_dir_name}-${gatk_version}/protected/gatk-package-distribution/target/gatk-package-distribution-${gatk_version}.jar /opt/GenomeAnalysisTK.jar \
    && rm -rf /opt/${gatk_dir_name}-${gatk_version} /opt/${maven_package_name}

ENTRYPOINT ["java", "-jar", "/opt/GenomeAnalysisTK.jar"]
