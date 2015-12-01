LN_FLAGS = -si

.PHONY: all

all:
	@echo ""
	@echo "Linking zsh runcoms"
	ln $(LN_FLAGS) ${PWD}/runcoms/zlogin ${HOME}/.zlogin
	ln $(LN_FLAGS) ${PWD}/runcoms/zlogout ${HOME}/.zlogout
	ln $(LN_FLAGS) ${PWD}/runcoms/zpreztorc ${HOME}/.zpreztorc
	ln $(LN_FLAGS) ${PWD}/runcoms/zprofile ${HOME}/.zprofile
	ln $(LN_FLAGS) ${PWD}/runcoms/zshenv ${HOME}/.zshenv
	ln $(LN_FLAGS) ${PWD}/runcoms/zshrc ${HOME}/.zshrc

	@echo ""
	@echo "Checking if zpretzo is installed"

	@if [! -d "~/.zprezto" ]; then \
		echo "Installing zpretzo"; \
        git clone --quiet --recursive  https://github.com/sorin-ionescu/prezto.git ~/.zprezto \
    else \
		echo "zpretzo is installed"; \
	fi
    
	@echo "Linking custom zpretzo theme"
	ln $(LN_FLAGS) $(CURDIR)/prompt/prompt_benjamin_setup \
            ~/.zprezto/modules/prompt/functions/prompt_benjamin_setup

	@echo ""
	@echo "zsh with zprezto setup is complete"
