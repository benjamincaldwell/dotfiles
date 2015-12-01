.PHONY : all

all:
	@$(MAKE) zsh
	@$(MAKE) tmux
	@$(MAKE) vim
	@$(MAKE) git
zsh:
	@echo "Making zsh"
	@$(MAKE) -C zsh

tmux:
	@echo "Making Tmux"
	@$(MAKE) -C tmux

vim:
	@echo "Making Vim"
	$(MAKE) -C vim

git:
	@echo "Making Git"
	$(MAKE) -C git
