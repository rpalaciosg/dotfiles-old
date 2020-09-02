install:
	sudo apt install -y \
		zsh \
		kitty

	mkdir -p .config/kitty

	./scripts/zsh.sh

symlinks:
	ln -sf `pwd`/.zshrc ~/.zshrc
	ls -sf `pwd`/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ls -sf `pwd`/config/kitty/theme.conf ~/.config/kitty/theme.conf
				
.PHONY: install symlinks

.ALL: install symlinks