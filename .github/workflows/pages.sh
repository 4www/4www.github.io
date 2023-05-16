#!/bin/bash

ORIGIN_URL='https://example.org/test'
GITHUB_ACTOR=${GITHUB_ACTOR:-"4www"}
destination_url_github="https://github.com/$GITHUB_ACTOR"
DESTINATION_URL=${1:-${DESTINATION_URL:-${destination_url_github}}}
document_path="$PWD/index.html"

sed --debug -i "s|${ORIGIN_URL}|${DESTINATION_URL}|" $document_path
