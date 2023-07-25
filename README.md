# ApiDoc
# {1!} 發行網站
* [BloodCity](https://bloodcity.netlify.app/)
# {2!} 製作目標
## {1.1!} 特色
* 整合C#、Rust的API規格文件。
* 整合taskjuggler來產生專案文件。
* 可產出單機及伺服器的規格。
## {1.2!} 好處
* 可攜, 純文字, 沒有移植問題。
* 使用精簡的Markdown語法產出文件。 
## {1.3} 下一步
* 支援doxygen。
* 支援python。
## {1.4} 推薦
* 文件依KiloathDoc規格製作。
* Markdown使用Visual Studio Code編輯。
# {2!} 使用方法
* 你想知道
  * [怎麼安裝docfx](https://bloodcity.netlify.app/rack_about/docfx_install.html)
  * 怎麼安裝rust
  * 怎麼安裝TaskJuggler
* 開始使用
  ```
  git clone --depth=1 --branch=main https://github.com/kiloath/ApiDoc.git MyProj
  cd .\MyProj\
  rm .git -r -fo
  git init -q; git add .
  git commit -m 'https://github.com/kiloath/ApiDoc.git'
  git flow init -d
  git flow feature start v1
  cd .\api_doc\
  ```
* 產生本地文檔
  ```
  h + tab
  .\help_local.bat
  ```
* 產生Web Site文檔  
  ```
  h*s + tab
  .\help_server.bat
  ```
