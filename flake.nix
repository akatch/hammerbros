{
  inputs = {
    systems.url = "github:nix-systems/default";
  };

  outputs = {
    systems,
    nixpkgs,
    ...
  } @ inputs: let
    eachSystem = f:
      nixpkgs.lib.genAttrs (import systems) (
        system:
          f nixpkgs.legacyPackages.${system}
      );
  in {

    devShells = eachSystem (pkgs: {
      default = pkgs.mkShell {
        shellHook = ''
          git submodule update --init --recursive
          echo -n "run 'podman-compose up' to start Hugo"
        '';
        buildInputs = with pkgs; [
          hugo
          podman
          podman-compose
        ];
      };
    });
  };
}
