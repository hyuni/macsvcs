{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> {} }:

with pkgs;

assert stdenv.isDarwin == true;

let inputs = [ bash getopt coreutils gawk gnused gnugrep ];
in
stdenv.mkDerivation {
  name = "shell";
  buildInputs = inputs;
}
