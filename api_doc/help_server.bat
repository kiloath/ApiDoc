rmdir /S /Q obj
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
cmd /c start docfx docfx_server.json --serve
timeout /t 5
start http://localhost:8080