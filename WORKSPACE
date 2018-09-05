workspace(name = "clodl_test")

http_archive(
  name = "io_tweag_rules_haskell",
  strip_prefix = "rules_haskell-0.6",
  urls = ["https://github.com/tweag/rules_haskell/archive/v0.6.tar.gz"]
)

load("@io_tweag_rules_haskell//haskell:repositories.bzl", "haskell_repositories")
haskell_repositories()

http_archive(
  name = "io_tweag_rules_nixpkgs",
  strip_prefix = "rules_nixpkgs-0.2.3",
  urls = ["https://github.com/tweag/rules_nixpkgs/archive/v0.2.3.tar.gz"],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_package")

nixpkgs_package(
  name = "ghc",
  # attribute_path = "haskell.compiler.ghc822",
  nix_file = "//:ghcWithHmatrix.nix",
)

register_toolchains("//:ghc")

http_archive(
    name = "io_tweag_clodl",
    urls = ["https://github.com/tweag/clodl/archive/e7321111654c3a605e039b4db5f3364a3d61e07c.tar.gz"],
    strip_prefix = "clodl-e7321111654c3a605e039b4db5f3364a3d61e07c",
)
