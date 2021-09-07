BINDIR=/usr/bin
MANDIR=/usr/share/man
VERSION=1.3

all:
	@echo make install          to install the software
	@echo make uninstall        to remove the software
	@echo make rpm		    to create a .rpm

install:
	if test ! -d $(DESTDIR)/$(BINDIR) ; then mkdir -p $(DESTDIR)/$(BINDIR) ; fi
	install -m 755 fnt $(DESTDIR)/$(BINDIR)/
	if test ! -d $(DESTDIR)/$(MANDIR)/man1 ; then mkdir -p $(DESTDIR)/$(MANDIR)/man1; fi
	install -c -m 644 fnt.1 $(DESTDIR)/$(MANDIR)/man1/ ; gzip -9 $(DESTDIR)/$(MANDIR)/man1/fnt.1

uninstall:
	rm -f $(DESTDIR)/$(BINDIR)/fnt
	rm -f $(DESTDIR)/$(MANDIR)/man1/fnt.1.gz

clean:
	@echo nothing to clean

release:
	cd .. ; tar cf fnt-$(VERSION).tar --exclude-vcs fnt ; xz -9f fnt-$(VERSION).tar

rpm:
	mkdir -p /usr/src/rpm/SOURCES/
	mkdir -p /usr/src/rpm/BUILD
	cp ../fnt-${VERSION}.tar.gz /usr/src/rpm/SOURCES/
	rpm -bb fnt.spec
