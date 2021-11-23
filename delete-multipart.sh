#!/bin/bash
aws s3api list-multipart-uploads --bucket sagegrouse-noise-files \
  | jq -r '.Uploads[] | "--key \"\(.Key)\" --upload-id \(.UploadId)"' \
  | while read -r line; do
    eval "aws s3api abort-multipart-upload --bucket sagegrouse-noise-files $line";
  done

exit 0