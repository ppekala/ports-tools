
INSTALL_SCRIPT=	install -m 555
MKDIR=		mkdir -p
PREFIX=		/usr/local

SCRIPTS=	mkpatch \
		pcheck \
		pclean \
		pcommit \
		pfind \
		plist-sort \
		plist-update \
		plog \
		reinplace-check

SSCRIPTS=	pkg-deleaf \
		tbuilder \
		upgrade-base \
		upgrade-ports

install:
	@${MKDIR} ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${SCRIPTS} ${DESTDIR}${PREFIX}/bin
	@${MKDIR} ${DESTDIR}${PREFIX}/sbin
	${INSTALL_SCRIPT} ${SSCRIPTS} ${DESTDIR}${PREFIX}/sbin

