#!/bin/bash

set -e
echo "Job started: $(date)"
# Adding to the dirname date + time for "versions"

/usr/local/bin/s3cmd sync $PARAMS "$DATA_PATH" "${S3_PATH}_$(date +%Y-%m-%d_%H:%M)/"

echo "Job finished: $(date)"
