{
  description = "whyflake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    hyprland.url = "github:hyprwm/Hyprland";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  

  outputs = { 
    self
  , nixpkgs
  , home-manager
  , hyprland
  , ... }@inputs:
  
  let
    system = "x86_64-linux"; 
    curversion = "24.11";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        #cudaSupport = true;
      };
      overlays = [
        (final: prev: {
 #         hyprland = inputs.hyprland.packages.${prev.system}.hyprland;
  #        xdg-desktop-portal-hyprland = inputs.hyprland.packages.${prev.system}.xdg-desktop-portal-hyprland;
          over-steam = (import ./overlays/steam.nix { inherit pkgs; });
          rewaita = (prev.callPackage ./overlays/rewaita.nix {});
        })
      ];
    };
  in {
    nixosConfigurations.thinkpad = inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
      inherit inputs system pkgs curversion;
      };
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        { 
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.whyoolw = import (./. + "/home/home.nix") ;
            extraSpecialArgs = { inherit curversion; };
          };
        }
      ];
    };
  };
}
