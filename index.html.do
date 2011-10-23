#!/bin/sh

redo-ifchange img.mustache index.mustache

(
	echo "---"
	echo "images:"
	(
		IFS="
		"
		for IMG in `find -name '*.jpg' -not -name '*.thumb.jpg'`; do
			NAME="`basename "$IMG" .jpg`"
			echo "---
fullsize: $NAME.jpg
thumbnail: $NAME.thumb.jpg"
		done
		echo "---"
	) | mustache - img.mustache | sed -e 's/^/    /g'
	echo "---"
) | mustache - index.mustache
