#!/bin/bash

GITHUB_ACTOR=${GITHUB_ACTOR:-"4www"}
destination_url_github="https://github.com/$GITHUB_ACTOR"
destination_url=${1:-${destination_url_github}}
origin_url='https://example.org/test'
document_path="$PWD/index.html"

sed --debug -i "s|${origin_url}|${destination_url}|" $document_path
