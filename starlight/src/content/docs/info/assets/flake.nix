{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    recar.url = "github:hamhimdev/recar/main";
    # If you prefer, you can replace this with Codeberg by using git+https://codeberg.org/hamhim/recar/main, however if you don't have proper ipv6 you might have trouble using this.
  };

  outputs = { self, nixpkgs, recar }: {
    nixosConfigurations.yourhostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        {
          environment.systemPackages = [
            recar.packages.x86_64-linux.default
          ];
        }
      ];
    };
  };
}