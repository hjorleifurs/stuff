#!/bin/sh

#mencoder mf://*.png -mf fps=$1 -ovc copy -o output.avi
#usage: png2avi.sh fps name, ie. png2avi.sh 25 great-name
#output would be the file great-name.avi and it would be 25 frames per second

mencoder "mf://*.png" -ovc x264 -fps $1 -o $2.avi
