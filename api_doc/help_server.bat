rmdir /S /Q obj
pushd .
cd tasks/diary/
cmd /c tj3 index.tjp
popd
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
cmd /c start docfx docfx_server.json --serve
timeout /t 5
start http://localhost:8080