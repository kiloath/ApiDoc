# 關於
# {1!} 目錄架構
## {1.1!} 根目錄架構
  ```
  ApiDoc
   ├── api_doc/
   ├── dotnet/
   └── rust/
  ```
* api_doc/  
  文章開發區
* dotnet/  
  dotnet開發區
* rust/  
  rust開發區
## {1.2!} api_doc目錄架構
* 架構
  ```
  api_doc/
   ├── _site/ (暫存)
   ├── api_dotnet/
   ├── api_rust/
   ├── rack_about/
   ├── rustdoc/ (暫存)
   ├── tasks/
   ├── templates/
   ├── .gitignore
   ├── docfx_local.json
   ├── docfx_server.json
   ├── help_local.bat
   ├── help_server.bat
   ├── index.md
   └── toc.yml
  ```
* 暫存
  * 標示為暫存的表示是動態產生的物件,不會進版控所以一開始會沒有此物件。
  * _site/ : 最終產品, 使用help_server.bat產生的一定要建置在Web Server上才會正常。
  * rustdoc/ : rust產生的Api文件會放在此目錄。
* api_*
  * 程式規格書, 以api_開頭的目錄。
  * api_dotnet/, C#程式API規格。
  * api_rust/, rust程式API規格。
* rack_*
  * 書架, 放文章的書架, 以rack_開頭的目錄。
  * rack_about/, 關於這個ApiDoc文章的書架。
* tasks/
  * 使用taskjuggler產生的專案文件。
  * 目前放甘特圖。
* templates/
  * 文件自定義的格式, 可自行修改成喜歡的文件樣式。
* docfx_*.json
  * docfx_local.json: 本地離線式的文件格式, 只需瀏覽器。
  * docfx_server.json: 架站式的文件格式需要Web Server。
  * 此兩種使用不同的格式,所以產生出的文件是不同的。
* help_*.bat
  * help_local.bat: 編譯本地式文件。
  * help_serer.bat: 編譯架站式文件。
* index.md
  * 首頁, 我不寫首頁而是導向其中的一篇文章。
* toc.yml
  * toc (Table Of Contents) 目錄
# {2!} 文件編譯
## {2.1!} docfx_local.json
* 路徑模式使用Glob表達式
* resource指的要複製到輸出(_site/)的檔案
```
"resource": [
  {
    "files": [
      "**/images/**",
      "rustdoc/doc/**",
      "tasks/diary/**"
    ],
    "exclude": [
      "tasks/**/*.tjp"
    ]
  }
]
```
* `**/images/**`: 表示此目錄以下所有子目錄`(**/)`,找到images目錄,以下所有子目錄及檔案(/images/**)。
* `"files"`: 要複製到輸出的物件。
* `"exclude"`:從`"files"`裡排除的物件。

