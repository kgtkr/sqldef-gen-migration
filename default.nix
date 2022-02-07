{ callPackage
, bash
, stdenv
, makeWrapper
, lib
}:
stdenv.mkDerivation {
  name = "sqldef-gen-migration";
  src = ./.;
  buildInputs = [ bash ];
  nativeBuildInputs = [ makeWrapper ];
  buildPhase = "true";
  installPhase = ''
    mkdir -p $out/bin
    cp sqldef-gen-migration $out/bin/sqldef-gen-migration
    wrapProgram $out/bin/sqldef-gen-migration \
      --prefix PATH : ${lib.makeBinPath [ bash ]}
  '';
}
