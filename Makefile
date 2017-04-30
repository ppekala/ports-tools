PREFIX=		/usr/local
DOCSDIR=	${PREFIX}/share/doc/ports-tools

INSTALL_DATA=	install -m 0644
INSTALL_SCRIPT=	install -m 555
MKDIR=		mkdir -p

DOCS=		README.md
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
	(cd ${DESTDIR}${PREFIX}/sbin && ln -s upgrade-ports pinstall)
	(cd ${DESTDIR}${PREFIX}/sbin && ln -s upgrade-ports preinstall)
	@${MKDIR} ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} ${DOCS} ${DESTDIR}${DOCSDIR}
