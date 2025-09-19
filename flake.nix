{
  description = "A sudoku clojurescript flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ...}:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          clojure
          nodejs_24
          leiningen
          clojure-lsp
          cljfmt
        ];

        shellHook = ''
          echo "hello world";
        '';
      };
    }
  );
}
