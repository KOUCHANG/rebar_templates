rebar_templates
===============

Erlangのファイルやアプリケーションのひな形集.

**現在コピーライトが固定で埋め込まれているのは近々どうにかします.**

# 使い方

## テンプレートの準備

### リンク

以下のコマンドで, ```templates_source/``` 以下のテンプレートファイルが ```${HOME}/.rebar/templates``` 以下にハードリンクされる.

```shell
$ make compile AUTHOR=KOUCHANG YEARNO=2013-2014
```

AUTHORにはcopyrightで指定する著作者を入れる(必須).

copyrightのdefaultの年号を変更したい場合はYEARNOを指定する(任意).

**【Note】**

ハードリンクしているのは以下の **3つの理由** のため

1. シンボリックリンクだと, ```./rebar list-templates``` 等で認識することができない.
2. リポジトリ内の更新をpullした時に反映させるように.
3. make clean時に対象のファイルを消せるように.

### 削除

以下のコマンドで対象のtemplatesを削除できる

```shell
$ make clean
```

ハードリンクしていることによりrebar_templatesで生成したテンプレートしか削除されない.

## 実際にテンプレートを使うとき

### ゼロから

何もないところから作業を始める時は,  ```dwzero``` テンプレートを用いる.

```shell
# 1. まず, どこかからErlangのアプリケーションを作りたいディレクトリに rebar ファイルを持って来ます.
# ${APPDIR}: アプリケーションを作りたいディレクトリ
# ${APPNAME}: 作りたいアプリケーションの名前
$ cd ${APPDIR}
$ ls
rebar
# 2. 次のコマンドを叩きます.
$ ./rebar create template=dwzero appid=${APPNAME}
...
$ ls
Makefile rebar rebar.config
# はいできあがり.
# 3. 後は, アプリケーションで必要なファイルを作成します.
$ make create-app
# か
$ ./rebar create template=dwapp appid=${APPNAME}
# で.
$
```

### 利用できるテンプレートを確認

```shell
$ ./rebar list-templates
```

### 新しいモジュールの作成

```shell
# ${MODNAME}: 新しいモジュールの名前
$ ./rebar create template=dwmod modid=${MODNAME}
```

### 新しいサーバモジュールの作成

```shel
# ${SRVNAME}: 新しいサーバモジュールの名前
$ ./rebar create template=dwsrv srvid=${SRVNAME}
```

