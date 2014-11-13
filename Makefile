# template のコピーライトのauthorを指定
AUTHOR=DWANGO Co., Ltd.

TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESSRCDIR=$(shell pwd)/templates_source
TEMPLATESDIR=$(shell pwd)/templates

all:
	@echo do nothing

init:
	mkdir -p ${TEMPLATESDIR} > /dev/null
	echo templatesdir: ${TEMPLATESDIR#/*}
	cp -p ${TEMPLATESSRCDIR}/* ${TEMPLATESDIR}
	ls -1 templates/*.template | xargs sed -i -e "/^ *{variables,/s/<<Please 'make init' in rebar_templates.>>/${AUTHOR}/"

link:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}
	rm -f templates/*

.PHONY: link clean
