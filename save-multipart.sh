#!/bin/bash
aws s3api list-multipart-uploads --bucket sagegrouse-noise-files \
  | jq -r '.Uploads[] | [ .Key, .UploadId, .Initiated  ] | @csv' \
  > s3-multipart-uploads-$(date +"%Y%m%d_%H%M%S").csv

exit 0