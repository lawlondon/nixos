{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs.gnomeExtensions; [
    appindicator
    runcat
    blur-my-shell
    dash-to-dock
    just-perfection
    grand-theft-focus
  ];
}
