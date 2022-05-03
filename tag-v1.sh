#!/bin/bash

tag="$1"
echo "Tagging $tag and updating v1 tag"
git tag -d v1
git push origin :v1
git tag $tag
git push origin $tag
git tag v1
git push origin v1
