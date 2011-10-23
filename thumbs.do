#!/bin/sh

IFS="
"
for IMG in `find -name '*.jpg' -not -name '*.thumb.jpg'`; do
	NAME="`basename "$IMG" .jpg`"
	redo-ifchange "$NAME".thumb.jpg
done
