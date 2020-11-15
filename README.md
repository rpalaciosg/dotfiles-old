# My dotfiles

**Que configuraciones uso?**

Estas son las configuraciones para las apps, editores y linters que uso en mi espacio de trabajo específicamente linux (PopOS! distro basada en ubuntu).

## Si deseas probarlos:

- Clona este repo en tu home, por ejemplo

```bash
git clone https://github.com/rpalaciosg/dotfiles ~/.dotfiles
```

- luego ejecuta el archivo `Makefile`,

```bash
cd ~/.dotfiles
make
```

Este comando ejecuta todos los apartados dentro del archivo `Makefile` tomando el statement por defecto `.ALL`

o

- Si deseas ir paso a paso, para verificar lo que se instala y crea; puedes ejecutar uno a uno cada statement del `Makefile`:

```bash
# 1 Statement de instalación
make install
# 2 statement de creación de enlaces simbólicos
make symlinks

```
### Kitty

![kitty](images/kitty.png)

### NVIM

![Neovim](images/nvim_conf.png)

## Probar con docker

> Muy pronto cargare la imagen y pasos para hacerlo

## Herramientas usadas

- [kitty](https://sw.kovidgoyal.net/kitty/) un emulador de terminal basado en GPU.
- [Kitty-themes](https://github.com/dexpota/kitty-themes) una colección de temas para kitty terminal.
- [zsh + ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) como shell por defecto
- [Nerd-fonts](https://github.com/ryanoasis/nerd-fonts) para que caracteres de fuentes parcheadas tengan un bue aspecto (Yo uso [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode))
- Ademas uso [JetBrains Mono](https://www.jetbrains.com/lp/mono/) y [Cascadia Code](https://github.com/microsoft/cascadia-code) ambas tienen soporte con ligaduras.
- ...