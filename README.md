# sorting-algo-func.pas

🐹🐹🐹 Pascalで整列アルゴリズムを実装してみた。  

## 環境構築

Pascalのコンパイラを[FreePascal](https://www.freepascal.org/download.html)からダウンロードしてインストールします。  
インストール後、コマンドプロンプトで`fpc`コマンドが使えることを確認します。  

## 実行方法

ローカルにPascal開発環境を構築した場合には、以下のコマンドを実行します。  

```shell
make
make run
```

また、DevContainerに入った場合も上記のコマンドを実行すれば、プログラムのコンパイル・実行ができます。  

---

Dockerで実行する場合は以下のコマンドを実行します。  
コンテナのビルドに10分程度かかることがあります。  

```shell
docker build -t sorting-algo-func-pas .
docker run --rm -it --name my-sorting-algo-func-pas sorting-algo-func-pas
```
