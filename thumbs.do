#!/bin/sh

IFS="
"
for IMG in `find -name '*.jpg' -not -name '*.thumb.jpg'`; do
	NAME="`basename "$IMG" .jpg`"
	printf "%s\0" "$NAME".thumb.jpg
done | xargs -0 redo-ifchange
