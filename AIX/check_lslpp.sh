#!/bin/sh

chk_message='files install status'
chk_restult=0
pkg_name="X11.adt.* bos.dosutil bos.dlc.* idsldap.cltbase62.*"
pkg_error=""

# main
for files in ${pkg_name} ;do
    number_files=$(lslpp -l|grep ${files} | wc -l )
    if [ ${number_files} -eq 0 ];then
        chk_restult=$(echo ${chk_restult} + 1 |bc)
        pkg_error=$(echo ${pkg_error} ${files})
    fi
done

echo "chk_restult = ${chk_restult}"
echo "pkg_error   = ${pkg_error}"
