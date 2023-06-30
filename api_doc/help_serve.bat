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
docfx docfx_server.json
del /S /F _site\*.js.map >nul
cmd /c start docfx serve _site
start http://localhost:8080
:: PAUSE