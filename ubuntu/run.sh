#!/usr/bin/env bash

docker run --rm -it -u pingu \
  -p 8090:8090 \
  -p 8094:8094 \
  -v /Users/pingu/sandbox:/home/pingu/sandbox \
  ubuntu/dev
