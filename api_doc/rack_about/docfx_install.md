# docfx安裝
# {1!} 安裝.NET
* [官方下載點](https://dotnet.microsoft.com/en-us/download)
* 指令下載免安裝.NET 8 preview.6
  ```
  cd ~
  rm dotnet-sdk-8.zip
  curl.exe -o dotnet-sdk-8.zip -L https://download.visualstudio.microsoft.com/download/pr/0072b092-a2f3-4f94-9d74-ded4a9778ff8/ebee51c1135ac31bf746dff35d919216/dotnet-sdk-8.0.100-preview.6.23330.14-win-x64.zip
  rmdir c:\net8sdk -r -fo
  mkdir c:\net8sdk
  tar -xvf dotnt-sdk-8.zip -C c:\net8sdk
  ```
* 設定windows terminal, 新增設定檔<mark>Net 8</mark>
  ```
  cmd /k "SET DOTNET_ROOT=C:\net8sdk\ && SET PATH=C:\net8sdk;%PATH% && C:\Progra~1\PowerShell\7\pwsh.exe -NoLogo -NoExit"
  ```

# {1!} 指令
* 指令
  ```
  dotnet tool search docfx
  docfx --version
  dotnet tool install -g docfx
  dotnet tool update -g docfx
  dotnet nuget list source
  dotnet tool update -g docfx --ignore-failed-sources
  dotnet tool list -g
  ```
* `dotnet tool search docfx`  
搜尋docfx工具套件, 可查看線上最新版本。
* `docfx --version`
  * 目前安裝的docfx版本
  * 2.67.3+f28165af43dde2ec072a79fa2479f475fcd947ad
* `dotnet tool install -g docfx`  
首次安裝
* `dotnet tool update -g docfx`  
更新docfx
* `dotnet nuget list source`
  * 查詢nuget來源
  * dotnet是透過nuget來尋找並安裝套件的, 如果找不到或無法安裝, 應該是nuget的來源有問題。
* `dotnet tool update -g docfx --ignore-failed-sources`
  * 更新時跳過無效的來源, 也可用在install。
  * `dotnet tool install -g docfx --ignore-failed-sources`
  * nuget不會每一個來源都找, 第一個來源找不到就放棄並回失敗, 所以加上`--ignore-failed-sources`參數讓它找不到就找下一個來源。
  * `dotnet tool list -g`  
  查看已經安裝了那些工具套件。

