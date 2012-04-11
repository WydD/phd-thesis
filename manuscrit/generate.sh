#!/bin/sh

for i in `find . | grep "\.tex\$" | sed 's/\.tex//' | sed 's!^./!!'`; do
	if [ -e $i ]; then
		grep -v '^\\input' $i.tex > tmp.tex
		if [ -e $i/.order ]; then
			for j in `cat $i/.order`; do
				echo "\input{$i/$j}"
			done >> tmp.tex
		else
			for j in `ls $i/*.tex`; do
                                echo "\input{$j}" 
                        done >> tmp.tex
		fi;
		mv tmp.tex $i.tex
	fi;
done;
