{
  description = "MetaRepo";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      let
        metarepo = pkgs.writeShellScriptBin "metarepo" ''
          exec ${pkgs.python313Packages.cookiecutter}/bin/cookiecutter "$@"
        '';
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            metarepo
          ] ++ (with pkgs; [
            python313
          ]) ++ (with pkgs.python313Packages; [
            cookiecutter
          ]);
        };

        apps.metarepo = {
          type = "app";
          program = "${metarepo}/bin/metarepo";
        };
      }
    );
}
