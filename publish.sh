#!/bin/bash

cd "$(dirname "$0")"

export PUBLISHING_URL="https://oss.sonatype.org/service/local/staging/deploy/maven2/"
export PUBLISHING_USER="danbrough"

if [ -z "$PUBLISHING_PASSWORD" ]; then
    echo PUBLISHING_PASSWORD not set
    exit 1
fi
./gradlew tasks

