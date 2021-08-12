#!/usr/bin/env bash
docker run \
  --name debiandev \
  --rm -it \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  debian/dev
