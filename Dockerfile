FROM python:3.8.2-alpine3.11

RUN apk add --no-cache bash

RUN pip install --upgrade pip && \
    pip install --no-cache-dir requests

COPY cyRating-check.py /scripts/cyRating-check.py
COPY entrypoint.sh /scripts/entrypoint.sh

WORKDIR /scripts

ENTRYPOINT ["./entrypoint.sh"]
