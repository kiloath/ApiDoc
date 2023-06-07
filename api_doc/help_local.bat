rmdir /S /Q obj
pushd .
cd tasks/diary/
cmd /c tj3 index.tjp
popd
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
docfx docfx_local.json
start _site\index.html