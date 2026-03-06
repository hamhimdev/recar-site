{
  environment.systemPackages = [
    recar.packages.\${pkgs.system}.default
    # ...
  ];
}