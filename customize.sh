#!/bin/bash
set -e

ROOT_PASSWORD="password"

IMAGES_DIR="/home/b415/images"

OLD_NAME="nocloud_alpine-3.23.3-x86_64-bios-tiny-r0.qcow2"

NEW_NAME="alpine-vnet-template.qcow2"

RESIZE=+150M

INSTALLED_PACKAGES=nmap

SSHD_CONFIG="/etc/ssh/sshd_config"

#  копирование и изменение размера диска
cd $IMAGES_DIR
cp ${OLD_NAME} ${NEW_NAME}
qemu-img resize ${NEW_NAME} ${RESIZE}

#  настройка системы

virt-customize -a ${NEW_NAME} \
    --root-password password:${ROOT_PASSWORD} \
    --run-command "resize2fs /dev/sda" \
    --install ${INSTALLED_PACKAGES} \
    --run-command "echo 'PasswordAuthentication yes' >> ${SSHD_CONFIG}" \
    --run-command "echo 'PermitRootLogin yes' >> ${SSHD_CONFIG}" 
