#!/bin/sh

mkdir -p /opt/unetlab/addons/qemu/$1/

FILE=/opt/unetlab/addons/qemu/$1/$1
if test -f "$FILE"; then
    /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
fi
chmod +x *.sh
