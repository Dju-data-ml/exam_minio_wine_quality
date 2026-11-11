#!/bin/sh
dvc init --no-scm -f
dvc remote add -d remote_storage s3://$DATA_BUCKET
dvc remote modify remote_storage endpointurl "${MINIO_ENDPOINT_URL}"
dvc repro
dvc push