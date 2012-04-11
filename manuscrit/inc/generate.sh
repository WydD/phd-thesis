#!/bin/sh
DIR=`basename $PWD`
for i in `ls packages/*.tex`;
do
	echo "\input{$DIR/$i}"
done > packages.tex
