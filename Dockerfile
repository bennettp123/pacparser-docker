FROM python:3.6
WORKDIR /scripts
RUN wget https://github.com/pacparser/pacparser/releases/download/1.3.7/pacparser-1.3.7.tar.gz -O pacparser-1.3.7.tar.gz
RUN sh -c 'tar xvzf pacparser-1.3.7.tar.gz && \
             cd pacparser*/src && \
             make && \
             make pymod && \
             make install-pymod' \
 && rm -rf pacparser*
COPY . /scripts
RUN pip install -r requirements.txt

