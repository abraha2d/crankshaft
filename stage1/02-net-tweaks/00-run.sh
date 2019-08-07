#!/bin/bash -e

install -D -m 644 files/ipv6.conf "${ROOTFS_DIR}/etc/modprobe.d/ipv6.conf"
install -m 644 files/hostname "${ROOTFS_DIR}/etc/hostname"

mkdir -p "${ROOTFS_DIR}/etc/systemd/network/"
ln -sf /dev/null "${ROOTFS_DIR}/etc/systemd/network/99-default.link"
