# 關於
# {1!} 前言
# {2!} 架構
* 架構
  ```
  ApiDoc
   ├── api_doc/
   ├── net7/
   └── rust/
  ```
* api_doc/  
  文章開發區
* net7/  
  net7開發區
* rust/  
  rust開發區
# {3!} api_doc/
* 架構
  ```
  api_doc/
   ├── api_net7/
   ├── api_rust/
   ├── rack_about/
   ├── tasks/
   ├── templates/
   ├── docfx_local.json
   ├── docfx_server.json
   ├── help_local.bat
   ├── help_server.bat
   ├── inex.md
   └── toc.yml
  ```
* api_
  * 程式規格書, 以api_開頭的目錄。
  * api_net7/, 示範net7程式規格。
  * api_rust/, 示範rust程式規格。
* rack_  
  * 書架, 放文章的書架, 以rack_開頭的目錄。
  * rack_about/, 這個ApiDoc的文章。
* tasks/
  * 專案管理文件。目前放甘特圖。
* templates/
  * 文件自定義的格式, 可自行修改成喜歡的文件樣式。
* docfx_*.json
  * docfx_local.json: 本地離線式的文件格式, 只需瀏覽器。
  * docfx_server.json: 架站式的文件格式需要Web Server。
* help_*.bat
  * help_local.bat: 編譯本地式文件。
  * help_serer.bat: 編譯架站式文件。
* inex.md
  * 首頁, 我不寫首頁而是導向其中的一篇文章。
* toc.yml
  * toc (Table Of Contents) 目錄
  * 每本書都有一個目錄, 目錄裡描述每個文章的檔案連結與文章名稱。
  * 目錄也可以是描述另一個目錄的連結。
# {3.1!} 文件開發
# {3.1.1!} docfx_local.json
* 使用Glob表達式

* 有那些文章的檔案
```
"files": [
    "rack_*/**/toc.yml",
    "rack_*/**/*.md"
]
```
* rack_\*/: 表示找到以rack_*開頭的目錄。
* \*\*/:表示找以下所有的子目錄。
* rack_\*/\*\*/toc.yml: 表示找rack_\*開頭的目錄以下所有的子目錄的所有toc.yml。
* *.md: 表示找以.md為副檔名的檔案。

