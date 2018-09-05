{ nixpkgs ? import <nixpkgs> {} }:
let inherit (nixpkgs) haskellPackages; in
haskellPackages.ghcWithPackages (p: with p;
[
  hmatrix-gsl
]
)

