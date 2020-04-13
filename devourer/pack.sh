#!/bin/bash

montage $(ls -f ${1}_[0-9]*.png | sort -V) -tile 1x10 -geometry +0+0 -background none miff:- | montage - -geometry +0+0 -tile 12x1 -background none ${1}_all.png
 
