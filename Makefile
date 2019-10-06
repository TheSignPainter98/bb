#!/usr/bin/make

INSTALL_LOCATION := ~/.bin

install: $(INSTALL_LOCATION)/bb

$(INSTALL_LOCATION)/bb: ./bb
	install -m 755 $^ $@

./bb:;

