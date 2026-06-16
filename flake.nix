{
  inputs = {
    # https://github.com/NixOS/nixpkgs/pull/531252
    nixpkgs.url = "github:nixos/nixpkgs?ref=9280dfc36d5597676cc65668061796487bb16779";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        flutter = pkgs.flutterPackages.v3_44;
      in
      {
        devShell =
          with pkgs;
          mkShell {
            FLUTTER_ROOT = flutter;
            buildInputs = [ flutter ];
          };
      }
    );
}
