{ config, pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    zed-editor
    nil
    nixd
    nixfmt
  ];
}
