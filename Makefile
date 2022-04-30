.PHONY: linux
linux: base bin

.PHONY: mac
mac: mac-pkgs base


.PHONY: mac-pkgs
mac-pkgs:
	brew install tmux fish neovim python@3.10


.PHONY: base
base: git vim nvim tmux fish profile bash zsh


.PHONY: git
git:
	rm -f ~/.gitconfig
	ln -s ${PWD}/src/.gitconfig ~/.gitconfig

.PHONY: vim
vim:
	@# Don't use -r. Assume it's a symlink.
	@# If not a symlink, then we don't want to delete anyway.
	rm -f ~/.vim ~/.vimrc ~/.gvimrc
	ln -s ${PWD}/src/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

.PHONY: nvim
nvim:
	@# Don't use -r. See above.
	rm -f ~/.config/nvim
	mkdir -p ~/.config
	ln -s ~/.vim ~/.config/nvim

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


# Old

.PHONY: fff
fff:
	git clone https://github.com/dylanaraps/fff.git
	cd fff; \
		sudo make install
	rm -rf fff

.PHONY: vundle
vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

.PHONY: emoji-config
emoji-config:
	# Only needed in some Linuxes. Not Fedora, though.
	mkdir -p ~/.config
	ln -s ${PWD}/src/config/fontconfig ~/.fontconfig
	fc-cache -fv
