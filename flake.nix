{
  description = "Inferno214221's Flake Repository";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";

    timekeeper = {
      url = "github:inferno214221/timekeeper";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    simple-tab-groups = {
      url = "github:inferno214221/simple-tab-groups";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kali-dark-vscode = {
      url = "github:inferno214221/kali-dark-vscode";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    time-tracker = {
      url = "github:inferno214221/time-tracker";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    timekeeper,
    simple-tab-groups,
    kali-dark-vscode,
    time-tracker
  }: flake-utils.lib.eachDefaultSystem (system: {
    packages = {
      timekeeper = timekeeper.packages."${system}".default;
      simple-tab-groups = simple-tab-groups.packages."${system}".default;
      kali-dark-vscode = kali-dark-vscode.packages."${system}".default;
      time-tracker = time-tracker.packages."${system}".default;
    };
  });
}
