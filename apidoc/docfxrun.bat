rmdir /S /Q obj
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
docfx docfx.json
start _site\index.html