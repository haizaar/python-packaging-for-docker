FROM python:3.7.2-alpine3.8
COPY requirements.txt /
RUN set -ex && \
    apk add --no-cache -t .tmp build-base openssl-dev && \
    pip3 install -r /requirements.txt && \
    apk del .tmp
COPY cheers.py /
CMD ["python3", "/cheers.py"]
