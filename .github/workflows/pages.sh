#!/bin/bash

GITHUB_ACTOR=${1:-${GITHUB_ACTOR:-"4www"}}
string_to_replace='https://github.com/$GITHUB_ACTOR'
string_replaced="https://github.com/${GITHUB_ACTOR}"
document_path="$PWD/index.html"

sed --debug -i "s|${string_to_replace}|${string_replaced}|" $document_path
