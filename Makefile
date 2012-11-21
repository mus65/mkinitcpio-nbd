VERSION	  = $(shell git describe)
DISTFILES = Makefile nbd_install nbd_hook

install:
	install -m 644 -D nbd_install $(DESTDIR)/usr/lib/initcpio/install/nbd
	install -m 644 -D nbd_hook $(DESTDIR)/usr/lib/initcpio/hooks/nbd

uninstall:
	$(RM) $(DESTDIR)/usr/lib/initcpio/install/nbd
	$(RM) $(DESTDIR)/usr/lib/initcpio/hooks/nbd

dist:
	mkdir mkinitcpio-nbd-$(VERSION)
	cp $(DISTFILES) mkinitcpio-nbd-$(VERSION)
	tar czf mkinitcpio-nbd-$(VERSION).tar.gz mkinitcpio-nbd-$(VERSION)
	rm -rf mkinitcpio-nbd-$(VERSION)
