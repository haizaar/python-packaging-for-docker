FROM python:3.7.2-alpine3.8 AS builder

RUN apk add --no-cache build-base openssl-dev git

# https://github.com/pypa/pip/issues/6163
RUN pip install pip==19.0.2

# https://github.com/six8/pyinstaller-alpine/blob/develop/Dockerfile
# Need to have alpine bootloader
ARG PYINSTALLER_TAG=v3.4
RUN git clone --depth 1 --single-branch --branch $PYINSTALLER_TAG https://github.com/pyinstaller/pyinstaller.git /tmp/pyinstaller \
    && cd /tmp/pyinstaller/bootloader \
    && python ./waf configure --no-lsb all \
    && pip install .. \
    && rm -Rf /tmp/pyinstaller

COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY cheers.py /

RUN pyinstaller --onefile cheers.py

FROM alpine:3.8 AS runner
COPY --from=builder /dist/cheers /

CMD ["/cheers"]
