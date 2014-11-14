# template のコピーライトのauthorを指定
AUTHOR=<<Please set AUTHOR when running 'make init'.>>

TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESSRCDIR=$(shell pwd)/templates_source
TEMPLATESDIR=$(shell pwd)/templates

all:
	@echo do nothing

compile:
	@sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}
	mkdir -p ${TEMPLATESDIR} > /dev/null
	cp -f ${TEMPLATESSRCDIR}/* ${TEMPLATESDIR}
	ls -1 templates/*.template | xargs sed -i -e "/^ *{variables,/s/<<Please 'make compile' with AUTHOR in rebar_templates.>>/${AUTHOR}/"
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}
	rm -f templates/*

.PHONY: link clean
