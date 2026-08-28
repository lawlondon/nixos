{ config, pkgs, ... }:

{
  users.users."london" = {
    isNormalUser = true;
    description = "london";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [
      discord
      protonplus
      gh
      qbittorrent
      blender
      gnome-tweaks
      resources
      mtr
      mtr-gui
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Install firefox.
  programs.firefox.enable = true;
  programs.git.enable = true;
  programs.gamemode.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    protontricks.enable = true;
  };

  environment.systemPackages = with pkgs; [
    wine
    winetricks
    mono
    geckodriver
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    corefonts
    vista-fonts
    liberation_ttf
    noto-fonts
    texlivePackages.collection-fontsrecommended
    winePackages.fonts
    texlivePackages.collection-fontsextra
    open-sans
  ];

}
