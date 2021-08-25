#!/usr/bin/env bash
docker run \
  --name jupyterdev \
  --rm -it \
  -v /Users/pingu/Documents/GitHub:/opt/src \
  jupyter/dev
