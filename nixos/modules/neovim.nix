{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    #package = pkgs.neovim-unwrapped;
    defaultEditor = true;
  };
}