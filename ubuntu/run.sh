#!/usr/bin/env bash
docker run \
  --name ubuntudev \
  --rm -it \
  -p 8090:8090 \
  -p 8091:8091 \
  -p 8092:8092 \
  -p 8093:8093 \
  -p 8094:8094 \
  -p 8095:8095 \
  -p 8096:8096 \
  -v data:/data \
  -v ubuntudev:/opt \
  -v /Users/pingu/sandbox/birdhouse:/opt/birdhouse/src \
  ubuntu/dev
