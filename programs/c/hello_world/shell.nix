{
  pkgs ? import <nixpkgs> { },
}:
pkgs.callPackage (
  {
    mkShell,
    nodejs,
  }:
  mkShell {
    strictDeps = true;
    nativeBuildInputs = [
      nodejs
    ];
  }
) { }
