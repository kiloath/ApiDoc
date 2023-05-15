# csharp

# {1!} 專案建置

```shell
>dotnet new sln -o csharp
>cd csharp
>dotnet new gitignore
>dotnet new classlib -o csharp_kiloath_lib
>dotnet sln add csharp_kiloath_lib
>dotnet new mstest -o csharp_kiloath_lib.tests
>dotnet add csharp_kiloath_lib.tests reference csharp_kiloath_lib
>dotnet sln add csharp_kiloath_lib.tests
>dotnet build
>dotnet test
```
