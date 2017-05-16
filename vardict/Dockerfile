FROM anapsix/alpine-java:jdk8

ENV r_version 3.3.3
ENV gradle_version 3.4.1
ENV vardict_version 1.5.1
ENV PATH=${PATH}:/opt/gradle/gradle-3.4.1/bin

ADD https://services.gradle.org/distributions/gradle-${gradle_version}-bin.zip /tmp/
ADD https://cran.r-project.org/src/base/R-3/R-${r_version}.tar.gz /tmp/
ADD https://github.com/AstraZeneca-NGS/VarDictJava/archive/v${vardict_version}.tar.gz /tmp/
COPY launch_vardict.sh /tmp/

RUN     apk add --update --no-cache perl gfortran pcre xz-libs libbz2 \ 
        && apk add --update --no-cache --virtual=deps git bzip2-dev ca-certificates curl-dev pcre-dev readline-dev xz-dev zlib-dev  autoconf automake g++ gcc make  \
        && cd /tmp \
        && tar xzvf R-${r_version}.tar.gz && rm R-${r_version}.tar.gz \
        && cd R-${r_version} \
        && ./configure --sysconfdir=/etc  --mandir=/usr/share/man --localstatedir=/var --disable-java --without-x \
        && make && make install && cd /tmp && rm -rf R-${r_version} \
        && mkdir /opt/gradle && cd /opt/gradle \
        && mv /tmp/gradle-${gradle_version}-bin.zip /opt/gradle \
        && unzip -d /opt/gradle gradle-${gradle_version}-bin.zip \
        && rm /opt/gradle/gradle-${gradle_version}-bin.zip \
        && cd /tmp \
        && tar xzvf v${vardict_version}.tar.gz && mv VarDictJava-${vardict_version} VarDictJava \
        && cd VarDictJava \
        && ./gradlew clean installApp \
        && rm -rf VarDict \
        && git clone https://github.com/AstraZeneca-NGS/VarDict.git \
        && rm -rf /var/cache/apk/* \
        && rm -rf /opt/gradle \
        $$ rm -rf v${vardict_version}.tar.gz \
        && apk del deps \
        && cd /tmp/VarDictJava/VarDict \
        && ln -s ../build/install/VarDict/bin/VarDict .


CMD ["VarDict"]
ENTRYPOINT ["bash", "/tmp/launch_vardict.sh"]
