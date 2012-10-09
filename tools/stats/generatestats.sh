#!/bin/sh
count_lines() {
        s=`mktemp -t comp`
        for i in `find . -type f | grep $1 | grep -v svn | grep -v lib`; do wc $2 $i >> $s; done;
        awk '{s=s+$1} END {print s}' $s
        rm $s
}

git log --pretty=format:%H > /tmp/hashes
for i in `cat /tmp/hashes`; do
	git checkout $i 2> /dev/null
	countchar=`count_lines '\.tex$' -c`
	countlines=`count_lines '\.tex$' -l`
	timestamp=`git log -n 1 --pretty=format:%ct`
	echo $timestamp $countlines $countchar
done
git checkout master 2> /dev/null
