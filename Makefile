TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESDIR=$(shell pwd)/templates

all:

link:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}

.PHONY: link clean
