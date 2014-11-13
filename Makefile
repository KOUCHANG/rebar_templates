# template のコピーライトのauthorを指定
AUTHOR="KOUCHANG"

TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESDIR=$(shell pwd)/templates

all:
	@echo do nothing

init:
	ls -1 templates/*.templates | xargs sed -i -e "/^ *{variables,/s/<<Please 'make init' in rebar_templates.>>/KOUCHANG/"

link:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}

.PHONY: link clean
