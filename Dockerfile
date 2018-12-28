FROM python:3-alpine

LABEL maintainer="Tim Akinbo <tim@akinbo.org>"

RUN set -ex && \
    apk add git && \
    pip install git+https://github.com/chris-belcher/electrum-personal-server.git@eps-v0.1.6#egg=electrum-personal-server && \
    apk del git

VOLUME ["/data"]
CMD ["electrum-personal-server", "-l", "/dev/null", "/data/config.cfg"]
EXPOSE 50002
