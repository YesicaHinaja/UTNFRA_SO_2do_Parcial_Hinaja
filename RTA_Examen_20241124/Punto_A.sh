#!/bin/bash

# 1) VER LOS DISCOS DISPONIBLES
echo "sudo fdisk -l"

# 2) Partición de los discos
echo "sudo fdisk /dev/sdc" # docker (5MB)
echo "sudo fdisk /dev/sdd" # swap (512MB), workareas (1.5GB)

# 3) Verificar las particiones
echo "lsblk"

# 4) Crear el volumen físico, grupo de volúmenes y volumen lógico en /dev/sdc
# docker
echo "sudo pvcreate /dev/sdc1"
echo "sudo vgcreate vg_datos /dev/sdc1"
echo "sudo lvcreate -L 5M -n lv_docker vg_datos"

# Crear el volumen físico en /dev/sdd
# workareas
echo "sudo pvcreate /dev/sdd1"
echo "sudo vgextend vg_datos /dev/sdd1" # agregado al grupo vg_datos

# swap
echo "sudo pvcreate /dev/sdd2"
echo u"sdo vgcreate vg_temp /dev/sdd2" # creación de grupo

# Verificar los grupos de volúmenes
echo "sudo vgs"


# Crear un volumen lógico lv_workareas en vg_datos utilizando el 100% del espacio libre
echo "sudo lvcreate -l +100%FREE vg_datos -n lv_workareas"

# Crear un volumen lógico lv_swap en vg_temp utilizando el 100% del espacio libre
echo "sudo lvcreate -l +100%FREE vg_temp -n lv_swap"

# Verificar los volúmenes lógicos
echo "sudo lvs"

# Verifica los discos y las particiones
echo "fdisk -l"

# Formatear los volúmenes lógicos creados
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker"
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas"
echo "sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap"

echo "sudo mkswap /dev/mapper/vg_temp-lv_swap"

#montamos
echo sudo mount /dev/mapper/vg_datos-lv_workareas /work/
echo sudo swapon /dev/vg_temp/lv_swap

#verificas
echo df -h
echo free -h
