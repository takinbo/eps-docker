FROM python:3-alpine

LABEL maintainer="Tim Akinbo <tim@akinbo.org>"

RUN set -ex && \
    pip install https://github.com/chris-belcher/electrum-personal-server/archive/eps-v0.1.6.tar.gz#egg=electrum-personal-server

VOLUME ["/data"]
CMD ["electrum-personal-server", "-l", "/dev/null", "/data/config.cfg"]
EXPOSE 50002
