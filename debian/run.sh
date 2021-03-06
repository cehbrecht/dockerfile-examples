#!/usr/bin/env bash
docker run \
  --name debiandev \
  --rm -it \
  -p 5000:5000 \
  -p 8000:8000 \
  -p 8081:8081 \
  -p 8443:8443 \
  -p 8090:8090 \
  -p 8093:8093 \
  -v debiandev:/opt \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  debian/dev
