#!/bin/bash

tag="$1"
echo "Tagging $tag and updating v2 tag"
git tag -d v2
git push origin :v2
git tag $tag
git push origin $tag
git tag v2
git push origin v2
