#!/usr/bin/env bash
docker run \
  --name debiandev \
  --rm -it \
  -p 5000:5000 \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  debian/dev
