FROM python:3.8.2-alpine3.11

COPY cyRating-check.py /cyRating-check.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]