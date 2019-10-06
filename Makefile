#!/usr/bin/make

INSTALL_LOCATION := ~/.bin

install: $(INSTALL_LOCATION)/bb
.PHONY: install

$(INSTALL_LOCATION)/bb: ./bb
	install -m 755 $^ $@

./bb:;

clean:
	$(RM) $(INSTALL_LOCATION)/bb
.PHONY: clean
