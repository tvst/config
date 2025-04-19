.PHONY: linux
linux: linux-brew-pkgs base bin

.PHONY: mac
mac: mac-brew-pkgs base

.PHONY: mac-brew-pkgs
mac-brew-pkgs:
	brew install tmux fish neovim python

.PHONY: linux-brew-pkgs
linux-brew-pkgs:
	brew install tmux fish neovim

.PHONY: base
base: git nvim tmux profile zsh bash fish ghostty

.PHONY: git
git:
	rm -f ~/.gitconfig
	ln -s ${PWD}/src/gitconfig ~/.gitconfig

.PHONY: nvim
nvim: repos
	@# Don't use -r. See above.
	rm -f ~/.config/nvim ~/.cache/nvim
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
	ln -s ${PWD}/src/config/fish ~/.config/fish

.PHONY: ghostty
ghostty:
	@# Don't use -r. See above.
	rm -f ~/.config/ghostty
	ln -s ${PWD}/src/config/ghostty ~/.config/ghostty

.PHONY: bin
bin:
	@# Don't use -r. See above.
	rm -f ~/.bin
	ln -s ${PWD}/src/bin ~/.bin

.PHONY: iosevka-font
iosevka-font: repos/iosevka iosevka-requirements
	cp src/iosevka-tvst.toml ${PWD}/repos/iosevka/private-build-plans.toml
	cd ${PWD}/repos/iosevka && npm run build -- contents::IosevkaTvstLight
	cd ${PWD}/repos/iosevka && npm run build -- contents::IosevkaTvstStandard

.PHONY: iosevka-requirements
iosevka-requirements:
	brew install node ttfautohint
	cd ${PWD}/repos/iosevka && npm install

.PHONY: repos
repos: repos/neophile repos/nvim repos/iosevka

repos/neophile:
	mkdir ${PWD}/repos
	cd ${PWD}/repos && git clone https://github.com/tvst/neophile.nvim neophile

repos/nvim:
	mkdir ${PWD}/repos
	cd ${PWD}/repos && git clone https://github.com/tvst/nvim-config nvim

repos/iosevka:
	mkdir ${PWD}/repos
	cd ${PWD}/repos && git clone --depth 1 https://github.com/be5invis/Iosevka.git iosevka
