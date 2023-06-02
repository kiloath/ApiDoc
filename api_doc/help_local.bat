rmdir /S /Q obj
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
docfx docfx_local.json
start _site\index.html