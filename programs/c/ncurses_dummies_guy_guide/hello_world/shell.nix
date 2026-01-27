{
  pkgs ? import <nixpkgs> { },
}:
pkgs.callPackage (
  {
    mkShell,
    ncurses
  }:
  mkShell {
    strictDeps = true;
    buildInputs = [
      ncurses
    ];
  }
) { }
