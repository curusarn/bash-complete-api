# scli plugin install Makefile

install:
	@cp bash-complete-api ${DESTDIR}/bash-complete-api

symlink:
	@ln -fs ${DESTDIR}/bash-complete-api ${SYMLINK_DIR}/scli_bash-complete-api

uninstall:
	rm -rf ${DESTDIR}
	rm ${SYMLINK_DIR}/scli_bash-complete-api

description:
	echo "Bash command that queries bash completions."
