{ pkgs, ... }:
{
  programs.fish.enable = true;
  users.users.whyoolw = {
    isNormalUser = true;
    description = "whyoolw";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };
}