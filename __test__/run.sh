#!/bin/bash

for tools in $*
do
    case $tools in

	apt)
	    bmake -C bmake ;;

	perl)
	    ansiecho -C '555/(132,0,41)' d i g i t a l ;;

	python)
	    legit --version ;;

	brew)
	    rcs --version ;;

    esac
done
