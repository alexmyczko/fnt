ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
BINDIR=/usr/bin
MANDIR=/usr/share/man
ZCOMPDIR=/usr/local/share/zsh/site-functions
BIN=$(ROOT)/fnt
VERSION := $(shell sed -n 's/^VERSION\s*=\s*\(.*\)/\1/p' $(BIN))

all:
	@echo make install          to install the software
	@echo make uninstall        to remove the software

install:
	# No direct dir creation because of *BSD
	install -d $(DESTDIR)/$(BINDIR)
	install -m 755 fnt $(DESTDIR)/$(BINDIR)/
	install -d $(DESTDIR)/$(MANDIR)/man1
	install -m 644 fnt.1 $(DESTDIR)/$(MANDIR)/man1/
	gzip -9 $(DESTDIR)/$(MANDIR)/man1/fnt.1
	install -d $(DESTDIR)/$(ZCOMPDIR)
	install -m 755 completions/_fnt $(DESTDIR)/$(ZCOMPDIR)/

uninstall:
	rm -f $(DESTDIR)/$(BINDIR)/fnt
	rm -f $(DESTDIR)/$(MANDIR)/man1/fnt.1.gz
	rm -f $(DESTDIR)/$(ZCOMPDIR)/_fnt

clean:
	@echo nothing to clean

release:
	cd .. ; tar cf fnt-$(VERSION).tar --exclude-vcs fnt ; xz -9f fnt-$(VERSION).tar
