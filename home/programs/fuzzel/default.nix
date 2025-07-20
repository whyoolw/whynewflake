{ pkgs, lib, ... }:
{
home.file.".config/fuzzel/fuzzel.ini".text = ''

dpi-aware=no
font=Liberation Mono:size=15
terminal=kitty
width=21
layer=top
icon-theme=Neuwaita
exit-on-keyboard-focus-loss=no
fields=filename,name

include = /home/whyoolw/.cache/wal/colors-fuzzel.ini 
''
}