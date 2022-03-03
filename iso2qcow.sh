#!/bin/sh

mkdir -p /opt/unetlab/addons/qemu/$1/

FILE=/opt/unetlab/addons/qemu/$1/$1
if test -f "$FILE"; then
    mv /opt/unetlab/addons/qemu/$1/$1 /opt/unetlab/addons/qemu/$1/cdrom.iso
    /opt/qemu/bin/qemu-img create -f qcow2 virtuoa.qcow2 200G
    /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
fi
chmod +x *.sh
