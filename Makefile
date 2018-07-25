# scli plugin install Makefile


.PHONY: brew bash-completion brew deps install uninstall description symlink

install: deps
	@cp bash-complete-api ${DESTDIR}/bash-complete-api

symlink:
	@ln -fs ${DESTDIR}/bash-complete-api ${SYMLINK_DIR}/scli_bash-complete-api

deps: bash-completion

uninstall:
	rm -rf ${DESTDIR}
	rm ${SYMLINK_DIR}/scli_bash-complete-api

description:
	@echo "Bash command that queries bash completions."

# macos magic follows

MACOS = $(shell echo $$OSTYPE | sed -e '1s/^darwin.*$$/yes/')

ifeq "${MACOS}" "yes"

bash-completion: brew
	@[ -f $$(brew --prefix)/etc/bash_completion ] || echo "Please install bash-completions"

brew:
	@brew --version >/dev/null || echo "Please install brew"

else

bash-completion:
	@[ -f /usr/share/bash-completion/bash_completion ] || echo "Please install bash-completions"

endif

