{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    pixelfix.url = "github:hamhimdev/pixelfix-rs/main";
  };

  outputs = { self, nixpkgs, pixelfix }: {
    nixosConfigurations.yourhostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit pixelfix; }; # !!!
      modules = [ ./configuration.nix ];
    };
  };
}