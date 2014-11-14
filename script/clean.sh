#!/bin/sh
# clean.sh TEMPLATESDIR TARGETTEMPLATESDIR

TEMPLATESDIR=${1}
TARGETTEMPLATESDIR=${2}

for template_path in `ls -1 ${TEMPLATESDIR}/* 2>/dev/null`
do
	template_file=${template_path##*/}
	target_inode=`ls -i ${TARGETTEMPLATESDIR}/${template_file} 2>/dev/null`
	template_inode=`ls -i ${template_path}`
	if [ "${target_inode%% *}" = "${template_inode%% *}" ]
	then
		echo rm ${TARGETTEMPLATESDIR}/${template_file}
		rm ${TARGETTEMPLATESDIR}/${template_file}
	else
		echo ${TARGETTEMPLATESDIR}/${template_file} is not removed.
	fi
done
