# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Chicago";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ryano = {
    isNormalUser = true;
    description = "Ryan Oatmeal";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # I like to run dash instead of bash scripts. I prefer to do posix 
    # compliant things when I can and if I'm in a situation where dash 
    # can't cut the mustard then I'm probably overthinking what I'm doing.
    dash
    # I put discord here because it's not available in home manager for some 
    # reason.
    discord-ptb
    # The standard unix text editor :)
    ed
    # For getting some goodies while using ed, like using the up arrow on
    # my keyboard to get previous commands.
    rlwrap
    # Macro Processor
    gnum4
    # File generation coordinator.
    gnumake
    # I use this to transcribe my voice recordings.
    whisperx
    # ;)
    tor-browser
    # bitcoin wallet
    electrum
    # I installed this for the gnu c compiler.
    gcc
    # So I can share what gcc successfully compiles.
    emscripten
    # I like to use this for grabbing text files.
    wget
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

  # Setting up Flakes
  nix.settings.experimental-features = "nix-command flakes";

  # For Sway Tiling Window Manager
  security.polkit.enable = true;
  hardware.graphics.enable = true;

  # Fonts get installed in a different way than usual system packages.
  # Make sure to put the font you want in the appropriate config of foot.
  fonts.packages = with pkgs; [
    # I like to use this in terminal emulators. 
    # You can see me invoking this in home manager.
    nerd-fonts.bigblue-terminal
    # Mathematics font for firefox. 
    stix-two
    # Latin font for firefox. 
    roboto
    roboto-mono
    roboto-serif
  ];
  # It's important to note that this gives man pages like
  # configuration.nix(5) and nixos-help.
  documentation.man.enable = true;
  documentation.info.enable = true;
  documentation.enable = true;
  documentation.dev.enable = true;
  documentation.doc.enable = true;
  documentation.nixos.enable = true;

  # I think this allows for me to use `man -k <program>`.
  # For **programs that are installed in config**. You have to place
  # this seperately in home manager for it to pick up a cache for those 
  # programs.
  documentation.man.generateCaches = true;
  documentation.man.man-db.enable = true;

  # Go to http://localhost:631/ to configure your printer.
  # Go to `Administration` and then `Add Printer` to add printer
  # in a GUI.
  services.printing = {
    enable = true;
    drivers = [
      pkgs.brlaser
    ];
  };
  
  # This configures printing for auto discovery.
  # https://nixos.wiki/wiki/Printing
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
