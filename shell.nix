let p = import ./nix {}; in

p.mkShell {
  buildInputs = [ p.bazel p.pax-utils p.nix p.zip ];
}
