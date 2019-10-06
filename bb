#!/bin/zsh

for f in $*; do
	if [[ "$f" == -* ]]; then
		echo "$f" | sed 's/^-*//'
	else
		echo "$f"
	fi
done | startBB
