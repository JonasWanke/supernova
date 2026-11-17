{
  inputs = {
    # https://github.com/NixOS/nixpkgs/pull/587442
    nixpkgs.url = "github:nixos/nixpkgs?ref=fdc28e399b28c24e279274962fe452f0c82d5bd8";
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
        flutter = pkgs.flutterPackages.v3_50;
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
