.PHONY: new-machine-setup
new-machine-setup: all vundle

.PHONY: all
all: vim nvim tmux fish bash

.PHONY: vim
vim:
	# Don't use -r. Assume it's a symlink.
	# If not a symlink, then we don't want to delete anyway.
	rm -f ~/.vim ~/.vimrc ~/.gvimrc
	ln -s ${PWD}/src/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

.PHONY: nvim
nvim:
	# Don't use -r. Assume it's a symlink.
	# If not a symlink, then we don't want to delete anyway.
	rm -f ~/.config/nvim
	ln -s ~/.vim ~/.config/nvim

.PHONY: tmux
tmux:
	# Don't use -r. See above.
	rm -f ~/.tmux.conf
	ln -s ${PWD}/src/tmux.conf ~/.tmux.conf

.PHONY: bash
bash:
	# Don't use -r. See above.
	rm -f ~/.bashrc
	ln -s ${PWD}/src/bashrc ~/.bashrc

.PHONY: fish
fish:
	# Don't use -r. See above.
	rm -f ~/.config/fish
	ln -s ${PWD}/src/fish ~/.config/fish

.PHONY: vundle
vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
