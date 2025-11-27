{
  pkgs ? import <nixpkgs> { },
}:
pkgs.callPackage (
  {
    mkShell,
    cargo,
    rustc,
    rustfmt,
  }:
  mkShell {
    strictDeps = true;
    nativeBuildInputs = [
      cargo
      rustc
      rustfmt
    ];
  }
) { }
