#!/bin/sh
dvc init
dvc remote add -d remote_storage s3://$DATA_BUCKET

