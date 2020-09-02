install:
	sudo apt install -y \
		zsh \	
		git

	./scripts/zsh.sh
	./scripts/fonts.sh
	./scripts/kitty.sh

symlinks:
	ln -sf `pwd`/.zshrc ~/.zshrc
	ls -sf `pwd`/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ls -sf `pwd`/config/kitty/theme.conf ~/.config/kitty/theme.conf
				
.PHONY: install symlinks

.ALL: install symlinks