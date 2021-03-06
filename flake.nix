{
  description = "raspberry-pi nixos configuration";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11"; };

  outputs = { self, nixpkgs }: {
    overlay = import ./overlay;
    rpi = import ./rpi {
      nixpkgs = nixpkgs;
      overlay = self.overlay;
    };
    rpi-3b-plus = import ./rpi-3b-plus self.rpi;
    rpi-4b = import ./rpi-4b self.rpi;
    rpi-zero-2-w = import ./rpi-zero-2-w self.rpi;
  };
}
