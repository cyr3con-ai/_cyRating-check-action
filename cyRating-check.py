#!/usr/bin/env python

import sys
import requests

if len(sys.argv) != 4:
  print('error:Invalid number of arguments. CVE, ACCESS_TOKEN, and SECRET_TOKEN are required.')
  sys.exit(1)

url = 'https://apigargoyle.com/v1/plugins/github-actions/cyrating-check'
params = {
  'vulnerabilityId': sys.argv[1]
}
headers = {
  'userId': sys.argv[2], 
  'apiKey': sys.argv[3]
}

try:
  response = requests.get(url, params=params, headers=headers)
  jsonResponse = response.json()
  if response.status_code == requests.codes.ok:
    if 'results' in jsonResponse:
      cyRating = jsonResponse['results'][0]['cyRating']
      print('ok:' + str(cyRating))
    else:
      print('error:Vulnerability not found')
  else:
    if 'error' in jsonResponse:
      print('error:' + jsonResponse['error'])
    elif 'message' in jsonResponse:
      print('error:' + jsonResponse['message'])
    else:
      print('error:' + str(jsonResponse))
except requests.exceptions.ConnectionError:
  print('error:Cannot connect to the server')
