install:
	install -m 644 -D nbd_install ${DESTDIR}/usr/lib/initcpio/install/nbd
	install -m 644 -D nbd_hook ${DESTDIR}/usr/lib/initcpio/hooks/nbd
	install -m 644 -D omit_kill_nbd ${DESTDIR}/etc/rc.d/functions.d/omit_kill_nbd

uninstall:
	rm -f ${DESTDIR}/usr/lib/initcpio/install/nbd
	rm -f ${DESTDIR}/usr/lib/initcpio/hooks/nbd
	rm -f ${DESTDIR}/etc/rc.d/functions.d/omit_kill_nbd
