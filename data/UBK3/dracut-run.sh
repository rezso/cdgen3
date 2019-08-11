#!/bin/bash -eu

KERN=$(readlink /boot/kernel.x86_64)
KERN=${KERN/kernel-/}
KVER=$(echo $KERN | sed -e "s/\.x86_64//")

dracut -f -N -c /etc/dracut.conf.d/uhu-live.conf /boot/initrd-$KVER.x86_64.img
