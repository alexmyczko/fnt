ROOT := $(lastword $(MAKEFILE_LIST))
BINDIR=/usr/bin
MANDIR=/usr/share/man
ZCOMPDIR=/usr/local/share/zsh/site-functions
BIN=$(ROOT)/fnt
VERSION := $(shell sed -n 's/^VERSION\s*=\s*\(.*\)/\1/p' $(BIN))

all:
	@echo make install          to install the software
	@echo make uninstall        to remove the software

install:
	if test ! -d $(DESTDIR)/$(BINDIR) ; then mkdir -p $(DESTDIR)/$(BINDIR) ; fi
	install -m 755 fnt $(DESTDIR)/$(BINDIR)/
	if test ! -d $(DESTDIR)/$(MANDIR)/man1 ; then mkdir -p $(DESTDIR)/$(MANDIR)/man1; fi
	install -c -m 644 fnt.1 $(DESTDIR)/$(MANDIR)/man1/ ; gzip -9 $(DESTDIR)/$(MANDIR)/man1/fnt.1
	if test ! -d $(DESTDIR)/$(ZCOMPDIR) ; then mkdir -p $(DESTDIR)/$(ZCOMPDIR) ; fi
	install -m 755 completions/_fnt $(DESTDIR)/$(ZCOMPDIR)/

uninstall:
	rm -f $(DESTDIR)/$(BINDIR)/fnt
	rm -f $(DESTDIR)/$(MANDIR)/man1/fnt.1.gz
	rm -f $(DESTDIR)/$(ZCOMPDIR)/_fnt

clean:
	@echo nothing to clean

release:
	cd .. ; tar cf fnt-$(VERSION).tar --exclude-vcs fnt ; xz -9f fnt-$(VERSION).tar
