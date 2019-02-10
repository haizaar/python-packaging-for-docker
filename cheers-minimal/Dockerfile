FROM python:3.7.2-alpine3.8 AS builder
RUN apk add --no-cache build-base openssl-dev
COPY requirements.txt /build/reqs.txt
RUN PYTHONUSERBASE=/pyroot PIP_USER=1 PIP_IGNORE_INSTALLED=1 \
    pip3 install -r /build/reqs.txt
COPY cheers /build/
RUN cd /build && PYTHONUSERBASE=/pyroot PIP_USER=1 pip install .

FROM haizaar/python-minimal:3.7.2-alpine3.8-3 AS runner
ENV PYROOT /pyroot
ENV PATH $PYROOT/bin:$PATH
ENV PYTHONUSERBASE $PYROOT
COPY --from=builder $PYROOT/ $PYROOT/
CMD ["cheers"]
