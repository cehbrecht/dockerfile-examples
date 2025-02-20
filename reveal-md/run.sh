#!/usr/bin/env bash
docker run \
  --name revealmddev \
  --rm -it \
  -p 1948:1948 \
  -p 35729:35729 \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  reveal-md/dev
