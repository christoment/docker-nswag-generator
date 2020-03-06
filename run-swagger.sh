#!/bin/bash

CURRENT_DIR=`dirname $0`
WORKDIR=`realpath ${CURRENT_DIR}/workdir`

docker run \
    -v $WORKDIR:/app \
    --rm swagger-generator:latest \
    run ./default.nswag
