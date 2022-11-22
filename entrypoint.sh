#!/bin/sh -l
set -euo pipefail

sh -c "mc alias set action $ENDPOINT $ACCESS_KEY $SECRET_KEY $API"

FULL_REMOTE_PATH=action

if [ -n "$BUCKET" ]; then
  FULL_REMOTE_PATH="$FULL_REMOTE_PATH/$BUCKET"
fi

FULL_REMOTE_PATH="$FULL_REMOTE_PATH/$1"

sh -c "mc cp $ARGS $FULL_REMOTE_PATH $2"
