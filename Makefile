#!/usr/bin/make

install: ~/.bin/bb

~/.bin/bb: ./bb
	install -m 755 $^ $@

./bb:;

