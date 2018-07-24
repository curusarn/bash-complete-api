# scli plugin install Makefile

install:
	@cp bash-complete-api ${DESTDIR}/bash-complete-api
	@cp examples/scli_bash_completion_bootstrap ${DESTDIR}/completion_bootstrap

symlink:
	@ln -fs ${DESTDIR}/bash-complete-api ${SYMLINK_DIR}/scli_bash-complete-api

uninstall:
	rm -rf ${DESTDIR}
	rm ${SYMLINK_DIR}/scli_bash-complete-api

description:
	echo "Bash command that queries bash completions."
