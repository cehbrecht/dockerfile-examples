#!/usr/bin/env bash
docker run \
  --name ubuntudev \
  --rm -it \
  -p 8090:8090 \
  -p 8091:8091 \
  -p 8092:8092 \
  -p 8093:8093 \
  -p 8094:8094 \
  -v ubuntudev:/opt \
  -v /Users/pingu/sandbox/birdhouse:/opt/birdhouse/src \
  ubuntu/dev
