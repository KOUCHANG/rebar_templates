TARGETTEMPLATESDIR=~/.rebar/templates
TEMPLATESDIR=$(shell pwd)/templates

all:
	@echo do nothing

link:
	mkdir -p ${TARGETTEMPLATESDIR} > /dev/null
	ln ${TEMPLATESDIR}/* ${TARGETTEMPLATESDIR}

clean:
	sh script/clean.sh ${TEMPLATESDIR} ${TARGETTEMPLATESDIR}

.PHONY: link clean
