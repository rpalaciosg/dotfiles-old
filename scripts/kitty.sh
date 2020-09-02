# Update/install kitty
# https://sw.kovidgoyal.net/kitty/

sudo apt install -y kitty
mkdir -p .config/kitty

# Install kitty themes
THEME_DIR=~/.config/kitty/kitty-themes/themes

if [[ ! -d "$THEME_DIR" ]]; then
  mkdir -p $THEME_DIR
fi

THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/Lavandula.conf
wget "${THEME}" -O "${THEME_DIR}"