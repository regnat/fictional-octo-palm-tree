package(default_visibility = ["//visibility:public"])

load("@io_tweag_clodl//clodl:clodl.bzl", "binary_closure")

load(
  "@io_tweag_rules_haskell//haskell:haskell.bzl",
  "haskell_binary",
  "haskell_toolchain",
  "haskell_import",
)

haskell_toolchain(
  name = "ghc",
  version = "8.2.2",
  tools = "@ghc//:bin",
)

haskell_import( name = "base" )
haskell_import( name = "hmatrix-gsl" )

haskell_binary(
  name = "clodl-test",
  src_strip_prefix = "src",
  srcs = ['src/Main.hs'],
  deps = [":base", ":hmatrix-gsl"],
  compiler_flags = [
    "-dynamic",
    "-pie",
    "-rdynamic",
  ],
)

binary_closure(
    name = "clodl-test-wrapped",
    src = ":clodl-test",
)
