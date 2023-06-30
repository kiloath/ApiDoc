@echo off
rmdir /S /Q _site
rmdir /S /Q rustdoc
:: rmdir /S /Q obj
pushd .
cd tasks/diary/
cmd /c tj3 index.tjp
popd
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
:: SET DOTNET_ROOT=D:\Portable\dotnet-sdk-8\
:: SET PATH=D:\Portable\dotnet-sdk-8;%PATH%
cmd /c start docfx docfx_server.json --serve
timeout /t 5
start http://localhost:8080
PAUSE