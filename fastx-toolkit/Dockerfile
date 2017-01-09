FROM alpine:3.4


ENV libgtextutils_version 0.7
ENV fastx_version 0.0.14

ADD https://github.com/agordon/libgtextutils/releases/download/${libgtextutils_version}/libgtextutils-${libgtextutils_version}.tar.gz /tmp/
ADD https://github.com/agordon/fastx_toolkit/releases/download/${fastx_version}/fastx_toolkit-${fastx_version}.tar.bz2 /tmp/
ADD http://downloads.sourceforge.net/project/gnuplot/gnuplot/5.0.4/gnuplot-5.0.4.tar.gz /tmp/
COPY launch_fastx.sh /tmp/

RUN  apk add --update --no-cache libstdc++ bash perl  gzip sed zlib gd \
        && apk add --update --no-cache --virtual=deps g++ make perl-dev jpeg-dev apkbuild-cpan zlib-dev freetype-dev gd-dev \
        && wget -O - http://cpanmin.us | perl - --self-upgrade  \
        && cpanm --force GD \
        && cpanm PerlIO::gzip GD::Graph::bars \
        && cd /tmp/ \
        && tar xzvf gnuplot-5.0.4.tar.gz \
        && cd gnuplot-5.0.4 \
        && ./configure && make && make install \
        && chmod 750 /tmp/launch_fastx.sh \
        && cd /tmp/ \
        && tar xzvf libgtextutils-${libgtextutils_version}.tar.gz \
        && tar xjvf fastx_toolkit-${fastx_version}.tar.bz2 \
        && cd /tmp/libgtextutils-${libgtextutils_version}/ && ./configure --prefix=/usr && make && make install \
        && cd /tmp/fastx_toolkit-${fastx_version}/ && ./configure && make && make install \
        && rm -rf /var/cache/apk/* /tmp/libgtextutils* /tmp/fastx* /tmp/gnuplot* \
        && apk del deps


CMD ["fastx_trimmer", "-h"]
ENTRYPOINT ["bash", "/tmp/launch_fastx.sh"]
