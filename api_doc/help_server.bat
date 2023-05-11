rmdir /S /Q obj
cmd /c start docfx build docfx_server.json --serve
timeout /t 5
start http://localhost:8080