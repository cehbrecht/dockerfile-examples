#!/usr/bin/env bash
docker run \
  --name ubuntudev \
  --rm -it \
  -p 5000:5000 \
  -p 8080:8080 \
  -p 8081:8081 \
  -p 8443:8443 \
  -v data:/data \
  -v ubuntudev:/opt \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  ubuntu/dev
