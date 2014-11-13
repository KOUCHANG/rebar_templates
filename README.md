rebar_templates
===============

Erlangのファイルやアプリケーションのひな形集。

# 使い方

## リンク

以下のコマンドで、 ```templates/``` 以下のテンプレートファイルが ```${HOME}/.rebar/templates``` 以下にハードリンクされる.

```shell
$ make link
```

**【Note】**

ハードリンクしているのは以下の **2つの理由** のため

a. リポジトリ内の更新をpullした時に反映させるように
b. make clean時に対象のファイルを消せるように

## 削除

以下のコマンドで対象のtemplatesを削除できる

```shell
$ make clean
```

