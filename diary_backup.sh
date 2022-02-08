#!/usr/bin/env bash

DPATH=./Roger_diary
read -p "password: " PAS_WD
case $1 in
C)
    tar -zcvf - ${DPATH}|openssl des3 -salt -k ${PAS_WD} | dd of=${DPATH}.des3
#    echo "password: ${PAS_WD}" >> ${DPATH}_password
;;
X)
    dd if=${DPATH} |openssl des3 -d -k $PAS_WD|tar zxf -
;;
*)
echo "help"
echo "sh tar_password.sh C"
echo "sh tar_password.sh X"
;;
esac