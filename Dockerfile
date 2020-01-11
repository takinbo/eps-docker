FROM python:3-alpine

LABEL maintainer="Tim Akinbo <tim@akinbo.org>"

RUN set -ex && \
    pip install https://github.com/chris-belcher/electrum-personal-server/archive/eps-v0.2.0.tar.gz#egg=electrum-personal-server

VOLUME ["/data"]
CMD ["electrum-personal-server", "/data/config.ini"]
EXPOSE 50002
