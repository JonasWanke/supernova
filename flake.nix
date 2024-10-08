{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        flutter = pkgs.flutterPackages.v3_24;
      in {
        devShell = with pkgs;
          mkShell {
            FLUTTER_ROOT = flutter;
            buildInputs = [ flutter ];
          };
      });
}
