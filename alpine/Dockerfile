FROM python:3.6-alpine
COPY *.patch /tmp/
RUN apk add --no-cache \
        build-base \
        ca-certificates \
        make \
        openssl \
        wget \
 && update-ca-certificates \
 && wget https://github.com/pacparser/pacparser/releases/download/1.3.7/pacparser-1.3.7.tar.gz -O pacparser-1.3.7.tar.gz \
 && sh -c 'tar xzf pacparser-1.3.7.tar.gz && \
             cd pacparser* && \
             cat /tmp/*.patch | patch -p1 && \
             cd src && \
             make && \
             make install' \
 && rm -rf pacparser* /tmp/*.patch
CMD /bin/sh

