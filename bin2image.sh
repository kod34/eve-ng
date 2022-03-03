#!/bin/sh

FILE=/opt/unetlab/addons/dynamips/$1
if test -f "$FILE"; then
    unzip -p $1 > $1.image
    /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
    rm $1
fi
chmod +x bin2image.sh
