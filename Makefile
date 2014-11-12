TARGETTEMPLATEDIR=~/.rebar/templates

all: init

init:
	mkdir -p ${TARGETTEMPLATEDIR} > /dev/null
	ln -s $(shell pwd)/templates/* ${TARGETTEMPLATEDIR}

clean:
	# templates以下のファイルを1つ取得
	# TARGETTEMPLATEDIRに同名のファイルがあるかチェック
	# 同名のファイルがあればリンク先をチェック
	# リンク先がtemplates以下のファイルであれば削除

.PHONY: init clean
