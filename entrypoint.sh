#!/usr/bin/env bash

result=$(/cyRating-check.py $1 $2 $3)
parsedResult=(${result//:/ })
if [ ${parsedResult[0]} == 'ok' ]; then
  echo ::set-output name=cy-rating::${parsedResult[1]}
  exit 0
else
  echo $result
  exit 1
fi
