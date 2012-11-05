#!/bin/sh

#mencoder mf://*.png -mf fps=$1 -ovc copy -o output.avi

mencoder "mf://*.png" -ovc x264 -fps $1 -o $2.avi
