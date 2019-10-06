#!/bin/bash

helpOutput="$(echo h | startBB)"
echo '{'
echo '"program": "bb",'
echo '"description": "CLI for startBB",'
echo '"longDescription": "Although AtelierB provide a batcher for their product, commands must be specified either within it, piped in, or through a command file. This can be annoying when attempting to integrate this with other shell applications. This program provides an interface for the batcher with a more CLI-friendly syntax.",'
echo '"license": "GPL v3",'
echo '"version": "1.0.0",'
echo '"date": "2019-10-06",'
echo '"seeAlso": [{"name": "startAB", "manLocation": 1}, {"name": "startBB", "manLocation": 1}, {"name": "bbatch", "manLocation": 1}],'
echo '"bugs": "Please post bugs at <https://github.com/TheSignPainter98/bb/issues>",'
echo '"author": "*bb* is maintained by Ed Jones; *bbatch*(1), *startBB*(1), etc. are owned by CLEARSY Systems Engineering",'
echo -n '"args": ['
first=1
echo "$helpOutput" | grep "^(" | while read h; do
	opt="$(echo ${h:1:4} | sed 's/ *//')"
	help="${h:7}"
	if [[ "$first" -eq "0" ]]; then
		echo -n ','
	fi
	first=0
	echo -n "{\"short\": \"-$opt\", \"long\": \"--$opt\", \"type\": \"flag\", \"default\": \"False\", \"help\": \"$help\", \"mandatory\": false}"
done
echo -e "],"
echo '"examples": [{"input": "bb -cmd [args ...] [-cmd [args ...] ...]"}]'
echo "}"
