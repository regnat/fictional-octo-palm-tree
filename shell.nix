let p = import <nixpkgs> {}; in

p.mkShell {
  buildInputs = [ p.bazel p.pax-utils ];
}
