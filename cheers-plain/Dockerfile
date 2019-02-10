FROM python:3.7.2-alpine3.8
RUN apk add --no-cache build-base openssl-dev
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY cheers.py /
CMD ["python3", "/cheers.py"]
