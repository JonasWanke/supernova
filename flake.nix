{
  inputs = {
    # https://github.com/NixOS/nixpkgs/pull/365302
    nixpkgs.url =
      "github:nixos/nixpkgs?ref=a5877ab314060e603af30a54532995785073757f";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        flutter = pkgs.flutterPackages.v3_27;
      in {
        devShell = with pkgs;
          mkShell {
            FLUTTER_ROOT = flutter;
            buildInputs = [ flutter ];
          };
      });
}
