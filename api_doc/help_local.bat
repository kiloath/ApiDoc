@echo off
rmdir /S /Q _site 2>nul
rmdir /S /Q tasks\diary 2>nul
rmdir /S /Q rustdoc 2>nul
:: rmdir /S /Q obj 2>nul
pushd .
mkdir tasks\diary
cd tasks/diary/
cmd /c tj3 ../index.tjp
popd
cargo rustdoc --manifest-path ../rust/Cargo.toml --target-dir rustdoc
REM 使用免安裝NET SDK時 /*
SET DOTNET_ROOT=C:\net8sdk\
SET PATH=C:\net8sdk\;%PATH%
REM 使用免安裝NET SDK時 */
docfx docfx_local.json
del /S /F _site\*.js.map
start _site\index.html
:: PAUSE