#!/usr/bin/env bash
docker run \
  --name centosdev \
  --rm -it \
  -p 5000:5000 \
  -v data:/data \
  -v centosdev:/opt \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  centos/dev
