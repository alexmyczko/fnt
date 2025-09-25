ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
BINDIR=/usr/bin
MANDIR=/usr/share/man
ZCOMPDIR=/usr/local/share/zsh/site-functions
BIN=$(ROOT)/fnt
VERSION := $(shell sed -n 's/^VERSION\s*=\s*\(.*\)/\1/p' $(BIN))

all:
	@echo make install          to install the software
	@echo make uninstall        to remove the software
	@echo make macos            build macOS gui
	@echo make gnustep          build GNUstep gui

install:
	# No direct dir install/create because of *BSD
	install -v -d $(DESTDIR)/$(BINDIR)
	install -v -m 755 fnt $(DESTDIR)/$(BINDIR)/
	install -v -d $(DESTDIR)/$(MANDIR)/man1
	install -v -m 644 fnt.1 $(DESTDIR)/$(MANDIR)/man1/
	gzip -v -9 $(DESTDIR)/$(MANDIR)/man1/fnt.1
	install -v -d $(DESTDIR)/$(ZCOMPDIR)
	install -v -m 755 completions/_fnt $(DESTDIR)/$(ZCOMPDIR)/

uninstall:
	rm -v -f $(DESTDIR)/$(BINDIR)/fnt
	rm -v -f $(DESTDIR)/$(MANDIR)/man1/fnt.1.gz
	rm -v -f $(DESTDIR)/$(ZCOMPDIR)/_fnt

macos:
	@echo building for macOS
	clang -framework Cocoa -o FNT FNT.m

gnustep:
	@echo building for GNUstep
	gcc `gnustep-config --objc-flags` -lgnustep-base -lgnustep-gui -lgnustep-back -fobjc-arc -o FNT FNT.m

clean:
	@echo nothing to clean

release:
	cd .. ; tar cf fnt-$(VERSION).tar --exclude-vcs fnt ; xz -9f fnt-$(VERSION).tar
