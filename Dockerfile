FROM python:3.8.2-alpine3.11

RUN apk add --no-cache bash

RUN pip install --upgrade pip && \
    pip install --no-cache-dir requests

COPY cyRating-check.py /cyRating-check.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
