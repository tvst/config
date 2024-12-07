.PHONY: linux
linux: base bin

.PHONY: mac
mac: mac-pkgs base

.PHONY: mac-pkgs
mac-pkgs:
	brew install tmux fish neovim python

.PHONY: base
base: git nvim tmux fish profile bash zsh

.PHONY: git
git:
	rm -f ~/.gitconfig
	ln -s ${PWD}/src/.gitconfig ~/.gitconfig

.PHONY: nvim
nvim: repos
	@# Don't use -r. See above.
	rm -f ~/.config/nvim
	mkdir -p ~/.config
	ln -s ${PWD}/repos/nvim ~/.config/nvim

.PHONY: tmux
tmux:
	@# Don't use -r. See above.
	rm -f ~/.tmux.conf
	ln -s ${PWD}/src/tmux.conf ~/.tmux.conf

.PHONY: profile
profile:
	@# Don't use -r. See above.
	rm -f ~/.profile
	ln -s ${PWD}/src/profile ~/.profile

.PHONY: zsh
zsh:
	@# Don't use -r. See above.
	rm -f ~/.zshrc
	ln -s ${PWD}/src/zshrc ~/.zshrc

.PHONY: bash
bash:
	@# Don't use -r. See above.
	rm -f ~/.bashrc
	ln -s ${PWD}/src/bashrc ~/.bashrc

.PHONY: fish
fish:
	@# Don't use -r. See above.
	rm -f ~/.config/fish
	ln -s ${PWD}/src/fish ~/.config/fish

.PHONY: bin
bin:
	@# Don't use -r. See above.
	rm -f ~/.bin
	ln -s ${PWD}/src/bin ~/.bin

.PHONY: repos
repos:
	cd ${PWD}/repos && git clone https://github.com/tvst/neophile.nvim neophile
	cd ${PWD}/repos && git clone https://github.com/tvst/nvim-config nvim
