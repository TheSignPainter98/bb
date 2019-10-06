#!/usr/bin/make

INSTALL_LOCATION := ~/.bin
MAN_LOCATION := /usr/share/man/man1

install: $(INSTALL_LOCATION)/bb $(MAN_LOCATION)/bb.1.gz
.PHONY: install

$(INSTALL_LOCATION)/bb: ./bb
	install -m 755 $^ $@

./bb:;

$(MAN_LOCATION)/bb.1.gz: ./bb.1.gz
	sudo install -m 755 $^ $@

./bb.1.gz: ./generate-argspec.sh
	./generate-argspec.sh | mangen | gzip -9 > $@

./generate-argspec.sh:;

clean:
	$(RM) $(INSTALL_LOCATION)/bb ./*.gz ./*.json
	sudo $(RM) $(MAN_LOCATION)/bb.1.gz
.PHONY: clean
