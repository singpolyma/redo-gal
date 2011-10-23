#!/bin/sh

redo-ifchange "$1.jpg"
convert "$1.jpg" -resize 200 -
