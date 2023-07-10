# ApiDoc
# {1!} 我的網站
* [BloodCity](https://bloodcity.netlify.app/)
# {1!} 特色
## {1.1!} 特色
* 整合C#、Rust的API規格文件。
* 整合taskjuggler。
* 分單機及伺服器文件。
## {1.2!} 好處
* 可攜,純文字,沒有移植問題。
* 使用精簡的Markdown語法產出文件。 
* 使用taskjuggler來管理專案,可攜純文字
## {1.3} 未來
* 支援doxygen。
* 支援python。
## {1.4} 推薦
* 文件依KiloathDoc規格製作。
* Markdown使用Visual Studio Code編輯。
* 使用Net 8解析C#。
# {2!} 使用方法
* 開始使用
  ```
  git clone --depth=1 --branch=main https://github.com/kiloath/ApiDoc.git MyProj
  cd .\MyProj\
  remove-Item -Recurse -Force .git
  git init -q
  git add .
  git commit -m 'https://github.com/kiloath/ApiDoc.git'
  git flow init -d
  git flow feature start v1
  cd .\api_doc\
  ```
* 產生本地文檔
  ```
  .\help_local.bat
  ```
* 產生Web Site文檔  
  ```
  .\help_server.bat
  ```
