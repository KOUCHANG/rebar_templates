TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESDIR=$(shell pwd)/templates

all:

cp:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	cp ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}

.PHONY: link clean
