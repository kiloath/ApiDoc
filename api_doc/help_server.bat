rmdir /S /Q obj
cmd /c start docfx docfx_server.json --serve
timeout /t 5
start http://localhost:8080