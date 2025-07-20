{ pkgs
, ...
}: 
{
  fonts = {
    fontconfig.enable = true;
    fontDir = {
      enable = true;
      decompressFonts = true;
    };
    packages = (with pkgs; [
      terminus-nerdfont
      noto-fonts
      #nerdfonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      roboto
      roboto-slab
      fira
      fira-sans
      fira-code
      fira-code-symbols
      proggyfonts
      hack-font
      open-sans
    ]);
    
  };
}