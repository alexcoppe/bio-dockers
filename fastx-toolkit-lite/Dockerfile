FROM alpine:3.4


ENV libgtextutils_version 0.7
ENV fastx_version 0.0.14

ADD https://github.com/agordon/libgtextutils/releases/download/${libgtextutils_version}/libgtextutils-${libgtextutils_version}.tar.gz /tmp/
ADD https://github.com/agordon/fastx_toolkit/releases/download/${fastx_version}/fastx_toolkit-${fastx_version}.tar.bz2 /tmp/
COPY launch_fastx.sh /tmp/
#ADD http://downloads.sourceforge.net/project/gnuplot/gnuplot/5.0.4/gnuplot-5.0.4.tar.gz

RUN apk add --update --no-cache libstdc++ bash \
    && cd /tmp/ \
    && chmod 750 /tmp/launch_fastx.sh \
    && apk add --update --no-cache --virtual=deps g++ make \
    && tar xzvf libgtextutils-${libgtextutils_version}.tar.gz \
    && tar xjvf fastx_toolkit-${fastx_version}.tar.bz2 \
    && cd /tmp/libgtextutils-${libgtextutils_version}/ && ./configure --prefix=/usr && make && make install \
    && cd /tmp/fastx_toolkit-${fastx_version}/ && ./configure && make && make install \
    && rm -rf /var/cache/apk/* /tmp/libgtextutils* /tmp/fastx* \
    && apk del deps


CMD ["fastx_trimmer", "-h"]
ENTRYPOINT ["bash", "/tmp/launch_fastx.sh"]
