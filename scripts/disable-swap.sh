#!/bin/sh
swapoff -a
sed -i "/swap/d" /etc/fstab