#!/bin/sh

echo GIT commands
echo
echo "a) fetch RHI.git (clone)"

echo "b) fetch stuff.git (clone)"
echo "c) add and commit changes"
echo "p) push changes back to git"
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
	p|P) 
	   echo "push your stuff back to github"
	   git push -u http://github.com/hjorleifurs/RHI.git
	   ;;
	x|X) exit ;;
esac

