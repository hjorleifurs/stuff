#!/bin/sh

echo GIT commands
echo
echo "a) fetch RHI.git (clone)"

echo "b) fetch stuff.git (clone)"
echo "c) add and commit changes"
echo "1) push changes back to RHI.git"
echo "2) push changes back to stuff.git"
echo
echo "x) Exit"

read val

case $val in
	a|A) 
	   echo "get RHI.git"
	  git clone https://github.com/hjorleifurs/RHI.git
	   ;;
	b|B) 
	   echo "get stuff.git"
	  git clone https://github.com/hjorleifurs/stuff.git
	   ;;
	c|C) 
	   echo "add and commit your changes"
	   git add $1
	   git commit -a
	   ;;
	1) 
	   echo "push your stuff back to github RHI.git"
	   git push -u http://github.com/hjorleifurs/RHI.git
	   ;;
	2) 
	   echo "push your stuff back to github stuff.git"
	   git push -u http://github.com/hjorleifurs/stuff.git
	   ;;
	x|X) exit ;;
esac

