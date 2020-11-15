install:
	sudo apt install -y \
		zsh \	
		xclip \
		git


	./scripts/zsh.sh
	./scripts/fonts.sh
	./scripts/kitty.sh
	./scripts/nvim.sh

symlinks:
	ln -sf `pwd`/gitconfig ~/.gitconfig
	ln -sf `pwd`/gitignore ~/.gitignore
	ln -sf `pwd`/.zshrc ~/.zshrc
	ln -sf `pwd`/config/nvim/ ~/.config/nvim/
	ls -sf `pwd`/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ls -sf `pwd`/config/kitty/theme.conf ~/.config/kitty/theme.conf
				
.ALL: install symlinks ALL

.PHONY: install symlinks