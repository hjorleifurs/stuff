#!/bin/sh
# a little script to convert png files to mpg
# uses convert from image magic
# Hjorleifur Sveinbjornsson, 13.2.2011




echo Usage: png2mpg name fps

echo


fps=`echo "100/$2" | bc -l`

name=$1

echo convert some png files of $name at $2 fps to $name"-render"$2"fps.mpg"

echo

echo convert -delay $fps *.png $name"-render"$2"fps.mpg"
echo
convert -delay $fps *.png $name"-render"$2"fps.mpg"
