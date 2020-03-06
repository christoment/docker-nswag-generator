#!/bin/bash

OUTPUT_FOLDER="workdir"

CURRENT_DIR=`dirname $0`
WORKDIR=`realpath ${CURRENT_DIR}/${OUTPUT_FOLDER}`

mkdir -p $WORKDIR

docker run \
    -v $WORKDIR:/app \
    --rm swagger-generator:latest \
    run ./default.nswag
