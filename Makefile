# scli plugin install makefile

install:
	@cp bash-complete-api ${DESTDIR}/bash-complete-api

symlink:
	@ln -fs ${DESTDIR}/email-buildpackage ${SYMLINK_DIR}/scli-email-buildpackage

uninstall:
	rm -rf ${DESTDIR}
	rm ${SYMLINK_DIR}/scli-bash-complete-api
