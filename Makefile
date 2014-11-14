YEARNO=2014

TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESSRCDIR=$(shell pwd)/templates_source
TEMPLATESDIR=$(shell pwd)/templates

all:
	@echo 'make compile' or 'make clean'

ifdef AUTHOR
compile:
	@sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}
	mkdir -p ${TEMPLATESDIR} > /dev/null
	cp -f ${TEMPLATESSRCDIR}/* ${TEMPLATESDIR}
	# NOTE: 万が一, YEARNOに'KOUCHANG'という文字列が入ると失敗する.
	ls -1 templates/*.template | xargs sed -i -e "/^ *{variables,/s/2014/${YEARNO}/"
	ls -1 templates/*.template | xargs sed -i -e "/^ *{variables,/s/KOUCHANG/${AUTHOR}/"
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}
else
compile:
	@echo make compile AUTHOR="KOU CHANG" [YEARNO=2013-2014]
endif

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}
	rm -f templates/*

.PHONY: link clean
