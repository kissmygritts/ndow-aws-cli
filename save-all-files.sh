#!/bin/bash
aws s3api list-objects-v2 --bucket sagegrouse-noise-files \
  | jq -r '.Contents[] | [ .Key, .LastModified, .Size ] | @csv' \
  > s3-all-objects-$(date +"%Y%m%d_%H%M%S").csv

exit 0