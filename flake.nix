{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = import nixpkgs { inherit system; }; in
        rec {
          packages = {
            sqldef-gen-migration = pkgs.callPackage ./. { };
            sqldef = pkgs.callPackage ./sqldef.nix { };
          };
          defaultPackage = packages.sqldef-gen-migration;
          defaultApp = { type = "app"; program = "${defaultPackage}/bin/sqldef-gen-migration"; };
          devShells = {
            run-example = pkgs.mkShell {
              packages = [
                packages.sqldef-gen-migration
                packages.sqldef
              ];
            };
          };
        }
      );
}
