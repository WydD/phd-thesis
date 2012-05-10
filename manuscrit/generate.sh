#!/bin/sh
pattern=$1.*
for i in `find . | grep "\.tex\$" | sed 's/\.tex//' | sed 's!^./!!' | grep "$pattern"`; do
	if [ -e $i ]; then
		echo Generating inputs for directory: $i
		grep -v '^\\input' $i.tex > tmp.tex
		if [ -e $i/.order ]; then
			for j in `cat $i/.order`; do
				echo "\input{$i/$j}"
			done >> tmp.tex
			for k in `ls $i/*.tex`; do
				if grep `basename $k .tex` $i/.order > /dev/null; then
					echo -n;
				else
					echo "\input{$k}"
				fi;
                        done >> tmp.tex
		else
			for j in `ls $i/*.tex`; do
                                echo "\input{$j}"
                        done >> tmp.tex
		fi;
		mv tmp.tex $i.tex
	fi;
done;
