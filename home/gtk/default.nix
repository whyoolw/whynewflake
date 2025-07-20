{ pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme.name = "Rewaita";
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 20;
    };
  };
}