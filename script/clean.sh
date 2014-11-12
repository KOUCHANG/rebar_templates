#!/bin/sh
# clean.sh TEMPLATESDIR TARGETTEMPLATESDIR

TEMPLATESDIR=${1}
TARGETTEMPLATESDIR=${2}

for template_path in `ls -1 ${TEMPLATESDIR}/*`
do
	template_file=${template_path##*/}
	referer=`readlink -f ${TARGETTEMPLATESDIR}/${template_file}`
	if [ "${referer%/*}" = "${TEMPLATESDIR}" ]
	then
		echo rm ${TARGETTEMPLATESDIR}/${template_file}
		rm ${TARGETTEMPLATESDIR}/${template_file}
	else
		echo ${template_file} is not removed.
	fi
done
