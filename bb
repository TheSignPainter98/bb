#!/bin/zsh

first=1

(for f in $*; do
	if [[ "$f" == -* ]]; then
		if [[ "$first" == "0" ]]; then
			echo
		fi
		first=0
		echo -n "$f " | sed 's/^-*//'
	else
		echo -n "$f "
	fi
done && echo) | tee /dev/stderr | startBB
