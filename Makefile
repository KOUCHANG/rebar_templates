TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESDIR=$(shell pwd)/templates

all: init

init:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln -s ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}

.PHONY: init clean
