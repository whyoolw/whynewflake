{ config, pkgs, lib, ... }:

let

  fastfetchConfig = {
    "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = {
      type = "auto";
      height = 17;
      width = 30;
      padding = {
        top = 2;
        left = 3;
      };
    };
    modules = [
      "break"
      {
        type = "custom";
        format = "\u001b[90m┌───────────────────────────────────────────┐";
      }
      {
        type = "host";
        key = "│  ";
        keyColor = "green";
        format = "{family}";
      }
      {
        type = "cpu";
        key = "│ ├";
        keyColor = "green";
        format = "{name}";
      }
      {
        type = "gpu";
        key = "│ ├󰍛";
        keyColor = "green";
        format = "{name}";
      }
      {
        type = "memory";
        key = "│ ├󰍛";
        keyColor = "green";
      }
      {
        type = "disk";
        key = "└ └";
        keyColor = "green";
      }
      {
        type = "custom";
        format = "\u001b[90m└───────────────────────────────────────────┘";
      }
      "break"
      {
        type = "custom";
        format = "\u001b[90m┌───────────────────────────────────────────┐";
      }
      {
        type = "os";
        key = "│  ";
        keyColor = "yellow";
        format = "{pretty-name}";
      }
      {
        type = "kernel";
        key = "│ ├";
        keyColor = "yellow";
        format = "{release}";
      }
      {
        type = "packages";
        key = "│ ├󰏖";
        keyColor = "yellow";
        format = "{pacman} pcmn {flatpak-system} fltpk";
      }
      {
        type = "shell";
        key = "│ ├";
        keyColor = "yellow";
        format = "{pretty-name}";
      }
      {
        type = "custom";
        format = "│ │";
        outputColor = "magenta";
      }
      {
        type = "de";
        key = " DE";
        keyColor = "blue";
        format = "{pretty-name}";
      }
      {
        type = "wm";
        key = "│ ├";
        keyColor = "blue";
        format = "{pretty-name}";
      }
      {
        type = "terminal";
        key = "│ ├󰉼";
        keyColor = "blue";
        format = "{pretty-name}";
      }
      {
        type = "uptime";
        key = "└ └";
        keyColor = "blue";
        format = "{hours} horse+{minutes} minets";
      }
      {
        type = "custom";
        format = "\u001b[90m└───────────────────────────────────────────┘";
      }
      {
        type = "colors";
        paddingLeft = 15;
        symbol = "circle";
      }
    ];
  }