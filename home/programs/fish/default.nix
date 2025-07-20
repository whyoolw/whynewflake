{ pkgs, lib, ... }:
{
  programs.fish = {
    enable = true;
    shellAliases = {
      r = "ranger";
      b = "btop";
      ":q" = "exit";
      resp = "systemctl --user restart pipewire pipewire-pulse wireplumber";
      rebuild = "sudo nixos-rebuild switch --flake ./#thinkpad --show-trace";
    };
    functions = {
      fish_greeting = {
        body = "";
      };
    };
    #plugins = [
    #    {
    #name = "omf";
    #src = pkgs.fetchFromGitHub {
    #  owner = "oh-my-fish";
    #  repo = "oh-my-fish";
    #  rev = "62204b02c3643def0707a28af64bdb032ef5e069";
    #  hash = "sha256-oDKjZ+DOx03nA7YVU9KtgOd5pzH23+5wpJR3GlO/eT0=";
    #  fetchSubmodules = true;
    #};
  #}
#];
  };
}