@echo off
rmdir /S /Q _site 2>nul
rmdir /S /Q rustdoc 2>nul
:: rmdir /S /Q obj 2>nul
pushd .
cd tasks/diary/
cmd /c tj3 index.tjp
popd
cargo doc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
REM 使用免安裝NET SDK時 /*
:: SET DOTNET_ROOT=D:\Portable\dotnet-sdk-8\
:: SET PATH=D:\Portable\dotnet-sdk-8;%PATH%
REM 使用免安裝NET SDK時 */
cmd /c start docfx docfx_server.json --serve
timeout /t 5
start http://localhost:8080
PAUSE