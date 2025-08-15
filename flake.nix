{
  description = "Inferno214221's Flake Repository";

  inputs = {
    timekeeper.url = "github:inferno214221/timekeeper";
    simple-tab-groups.url = "github:inferno214221/simple-tab-groups";
    kali-dark-vscode.url = "github:inferno214221/kali-dark-vscode";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    timekeeper,
    simple-tab-groups,
    kali-dark-vscode
  }: flake-utils.lib.eachDefaultSystem (system: {
    packages = {
      timekeeper = timekeeper.packages."${system}".default;
      simple-tab-groups = simple-tab-groups.packages."${system}".default;
      kali-dark-vscode = kali-dark-vscode.packages."${system}".default;
    };
  });
}