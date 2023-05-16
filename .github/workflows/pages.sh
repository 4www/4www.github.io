#!/bin/bash

GITHUB_ACTOR=${1:-${GITHUB_ACTOR:-"4www"}}
destination_url=${2:-${"https://github.com/${GITHUB_ACTOR}"}}
origin_url='https://example.org/test'
document_path="$PWD/index.html"

sed --debug -i "s|${origin_url}|${destination_url}|" $document_path
