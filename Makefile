install:
	sudo apt install -y \
		zsh \	
		xclip \
		git \
		tldr \
		bat \
		peco
		

	./scripts/colorls.sh
	./scripts/zsh.sh
	./scripts/fonts.sh
	./scripts/kitty.sh
	./scripts/nvim.sh

colorls:
	sudo gem install colorls

symlinks:
	ln -sf `pwd`/gitconfig ~/.gitconfig
	ln -sf `pwd`/gitignore ~/.gitignore
	ln -sf `pwd`/.zshrc ~/.zshrc
	ln -sf `pwd`/config/nvim/ ~/.config/nvim/
	ls -sf `pwd`/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ls -sf `pwd`/config/kitty/theme.conf ~/.config/kitty/theme.conf
				
.ALL: install symlinks ALL

.PHONY: install symlinks
