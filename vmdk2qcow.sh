#!/bin/sh

mkdir -p /opt/unetlab/addons/qemu/$1/

FILE=/opt/unetlab/addons/qemu/$1/$1
if test -f "$FILE"; then
    mv /opt/unetlab/addons/qemu/$1/$1 /opt/unetlab/addons/qemu/$1/$1.vmdk
    /opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 /opt/unetlab/addons/qemu/$1/$1.vmdk /opt/unetlab/addons/qemu/$1/$1.qcow2
    mv /opt/unetlab/addons/qemu/$1/$1.qcow2 /opt/unetlab/addons/qemu/$1/virtioa.qcow2
    rm /opt/unetlab/addons/qemu/$1/$1.vmdk
    /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
fi
chmod +x *.sh
