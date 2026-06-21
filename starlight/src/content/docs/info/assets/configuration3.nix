{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    recar.url = "github:hamhimdev/recar/main";
  };

  outputs = { self, nixpkgs, recar }: {
    nixosConfigurations.yourhostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit recar; }; # !!!
      modules = [ ./configuration.nix ];
    };
  };
}