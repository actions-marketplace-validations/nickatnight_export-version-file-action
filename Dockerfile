FROM alpine:3.11

RUN apk add --no-cache \
    bash \
    python3 \
    py3-pip &&\
    pip3 install --upgrade pip &&\
    pip3 install --no-cache-dir PyGithub &&\
    rm -rf /tmp/* &&\
    apk del --purge py3-pip

COPY export-version-file-action /usr/local/bin/

ENTRYPOINT ["export-version-file-action"]
