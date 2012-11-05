#!/bin/sh
# a little script to convert png files to mpg
# uses convert from image magic
# Hjorleifur Sveinbjornsson, 13.2.2011




echo Usage: png2mpg.sh fps name

echo


fps=`echo "100/$1" | bc -l`

name=$2

echo convert some png files of $name at $fps fps to $name"-render"$fps"fps.mpg"

echo

echo convert -delay $fps *.png $name"-render"$fps"fps.mpg"
echo
convert -delay $fps *.png $name"-render"$fps"fps.mpg"
