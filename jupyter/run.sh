#!/usr/bin/env bash
docker run \
  --rm \
  -p 10000:8888 \
  -e JUPYTER_ENABLE_LAB=yes \
  -v "${PWD}":/home/jovyan/work \
  --cpus="1.0" \
  --memory="512mb" \
  jupyter/dev
