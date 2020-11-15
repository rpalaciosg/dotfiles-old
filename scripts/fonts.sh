# Download and install the latast version of jetbrains mono.
# https://www.jetbrains.com/lp/mono/

# Before fonts
# FONT_NAME=JetBrainsMono-2.001.zip
# wget -O /tmp/fonts.zip https://download.jetbrains.com/fonts/${FONT_NAME}
# unzip -od /tmp/fonts/ /tmp/fonts.zip

# FONT_DIR=/tmp/fonts/ttf
# cp -v \
#   $FONT_DIR/JetBrainsMono-Regular.ttf \
#   $FONT_DIR/JetBrainsMono-Bold.ttf \
#   $FONT_DIR/JetBrainsMono-Italic.ttf \
#   $FONT_DIR/JetBrainsMono-Bold-Italic.ttf \
#   ~/.local/share/fonts

FONT_NAME=CascadiaCode-2009.22.zip
wget -O /tmp/fonts.zip https://github.com/microsoft/cascadia-code/releases/download/v2009.22/${FONT_NAME}
unzip -od /tmp/fonts/ /tmp/fonts.zip

FONT_DIR=/tmp/fonts/ttf
cp -v \
  $FONT_DIR/CascadiaCode.ttf \
  $FONT_DIR/CascadiaCodePL.ttf \
  $FONT_DIR/CascadiaMono.ttf \
  $FONT_DIR/CascadiaMonoPL.ttf \
  $FONTDIR/static/*.ttf \
  ~/.local/share/fonts