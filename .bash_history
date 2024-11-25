ls
cd Hinaja
ls
sudo apt update
sudo apt install ansible
sudo apt install git
sudo fdisk -l
ssh-keygen -t ed25519
pwd
cd ..
ls
cd Hinaja
ls -la
cd .ssh
ls
cat id_ed25519.pub
cat id_ed25519.pub > authorized_keys
ls
exit
ls
cd Hinaja
ls
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -a -G docker $(whoami)
exit
ls
cd Hinaja
ls
ls -la
pwd 
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git 
cat ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh 
source  ~/.bashrc  && history -a
source ~/.bashrc
ls
cd UTN-FRA_SO_Examenes/
LS
ls
cd 202406
ls
cat script_Precondicion.sh 
source ~/.bashrc
ls
cd ..
ñs
ls
cd ..
ñs
ls

cd UTN-FRA_SO_Examenes/
cd 202406
ls
bash script_Precondicion.sh 
source  ~/.bashrc  && history -a
source ~/.bashrc
ls
cd ..
ls
cd ..
ls
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
lsblk
sudo pvcreate /dev/sdd1
sudo vgcreate vg_datos /dev/sdd1
sudo lvcreate -L +5M -n lv_docker vg_datos
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo vgs
sudo lvcreate -L 4M -n lv_docker vg_datos
sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo pvcreate /dev/sdc1
sudo vgcreate vg_temp /dev/sdc1
sudo vgs
sudo lvcreate -L +4M vg_datos -n lv_docker
sudo lvs
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo lvs
lsblk
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/vg_temp/lv_swap
df -h
free -h
ls
cd RTA_Examen_20241124/
ls
vim Punto_A.sh
cat Punto_A.sh
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ÑS
ls
cd 202406
ls
cd docker
ls
vim index.html 
vim Dockerfile
id
docker build -t hinaja/imagenParcial:latest .
docker build -t hinaja/imagenparcial:latest .
vim Dockerfile
ls
docker build -t hinaja/imagenparcial:latest .
vim Dockerfile
docker build -t hinaja/imagenparcial:latest .
ls -l
chmod 644 Dockerfile
ls -l
find . -type l
docker system prune -a
docker build -t hinaja/imagenparcial:latest .
docker build -t hinaja/web1:latest .
rm Dockerfile 
ls
vim Dockerfile
ls
docker build -t hinaja/web1:latest .
ls
vim Dockerfile
docker build -t hinaja/web1:latest .
ls
cd ..
ls
cd docker
ls
docker build -t hinaja/web1:latest .
ls -l
sudo systemctl restart docker
ls
docker build -t hinaja/web1:latest .
sudo vgs
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t hinaja/web1:latest .
sudo fdisk -l
sudo fdisk /dev/sdd
lsblk
sudo pvcreate /dev/sdd3
sudo vgextend vg_datos /dev/sdd3
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t hinaja/web1:latest .
ls
lsblk
sudo vgs
sudo systemctl restart docker
docker build -t hinaja/web1:latest .
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
docker build -t hinaja/web1:latest .
sudo vgextend vg_datos /dev/sdd3
sudo pvcreate /dev/sdd3
sudo pvcreate -ff /dev/sdd3
mount | grep /dev/sdd3
sudo umount /dev/sdd3
sudo pvcreate -ff /dev/sdd3
lsblk
df -h
sudo resize2fs /dev/vg_datos/lv_docker
sudo lvdisplay /dev/vg_datos/lv_docker
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2
sudo vgextend vg_datos /dev/sdc2
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo systemctl restart docker
docker build -t hinaja/web1:latest .
docker image prune -a
docker system prune -a
docker build -t hinaja/web1:latest .
sudo fdisk /dev/sde
sudo pvcreate /dev/sde1
sudo vgextend vg_datos /dev/sde1
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
docker build -t hinaja/web1:latest .
docker ps
docker run -d -p 80:80 hinaja/imagenparcial:latest
sudo docker run -d -p 80:80 hinaja/imagenparcial:latest
docker images
sudo docker run -d -p 80:80 hinaja/web1:latest
sudo docker ps
ifconfig
sudo apt install net-tools
ifconfig
history
ls
cd ..
ls
cd..
cd ..
ls
cd ..
ls
cd RTA_Examen_20241124/
ls
vim Punto_C.sh
history
vim Punto_C.sh
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ld
ls
cd docker
ls
docker push hinaja/web1:latest
docker login
ls
cd ..
ls
cd Hinaja
la
ls
cd UTN-FRA_SO_Examenes/
Ls
ls
cd 202406
ls
cd docker
ls
docker push hinaja/web1:latest
docker tag hinaja/web1:latest hinaja/web1:latest
docker push hinaja/web1:latest
docker login -u hinaja
docker push hinaja/web1:latest
cd ..
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241124/
ls
vim Punto_
vim Punto_C.sh
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
la
ls
cd ansible
ls
car README.md 
cat README.md 
cd ..
ls
cd ..
ls
cd 2023_ReCU
cd 202311_Recu
ls
cd ansible
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles
ls
cd multi_Pruebas/
ls
cd tasks
ñs
ls
cd prueba_202311_Recu2doParcial.yml
vim prueba_202311_Recu2doParcial.yml
ls
cat main.yml
ls
_otros
ls
cd _otros
ls
cd ..
ls
cd ..
ls
cd templates
ls
vim template_01.j2 
ls
cd ..
ls
cd tasks
ls
vim prueba_202311_Recu2doParcial.yml 
ls
cd ..
ls
cd vars
ls
cat main.yml
ls
cd ..
ls
cd templates
ls
vim template_01.j2 
ls
vim template_02.j2
vim template_01.j2 
vim template_02.j2
cd ..
ls
cd tasks
ls
vim prueba_202311_Recu2doParcial.yml 
cd ..
ñd
cd ..
ansible-playbook -i inventory/hosts playbook.yml
ls -l /home/Hinaja/UTN-FRA_SO_Examenes/202311_Recu/ansible/
ansible-playbook -i inventory/hosts /ruta/correcta/prueba_202311_2doParcial.yml
pwd
ansible-playbook -i inventory/hosts /ruta/correcta/prueba_202311_2doParcial.yml/ruta/correcta/prueba_202311_2doParcial.yml
ls -l /home/Hinaja/UTN-FRA_SO_Examenes/202311_Recu/ansible/
find ~/UTN-FRA_SO_Examenes/ -name "prueba_202311_2doParcial.yml"
ansible-playbook -i inventory/hosts /home/Hinaja/UTN-FRA_SO_Examenes/202311/ansible/roles/multi_Pruebas/tasks/prueba_202311_2doParcial.yml
ls
cd roles
ls
cd multi_Pruebas/
ls
cd tasks
ls
vim prueba_202311_Recu2doParcial.yml 
ansible-playbook --syntax-check /home/Hinaja/UTN-FRA_SO_Examenes/202311/ansible/roles/multi_Pruebas/tasks/prueba_202311_2doParcial.yml
vim prueba_202311_Recu2doParcial.yml 
ansible-playbook --syntax-check /home/Hinaja/UTN-FRA_SO_Examenes/202311/ansible/roles/multi_Pruebas/tasks/prueba_202311_2doParcial.yml
vim prueba_202311_Recu2doParcial.yml 
cd ..
ls
git clone https://github.com/YesicaHinaja/UTNFRA_SO_2do_Parcial_Hinaja.git
ls
cd RTA_Examen_20241124/
PWD
ped
pwd
cp -r /home/Hinaja/RTA_Examen_20241124
cp -r /home/Hinaja/RTA_Examen_20241124 /ruta/destino/
cd ..
cp -r /home/Hinaja/RTA_Examen_20241124 /ruta/destino/
ls
cd UTNFRA_SO_2do_Parcial_Hinaja/
pwd
cp -r /home/Hinaja/RTA_Examen_20241124 /home/Hinaja/UTNFRA_SO_2do_Parcial_Hinaja/
ls
cd ..
UTN-FRA_SO_Examenes/
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
pwd
cp -r /home/Hinaja/UTN-FRA_SO_Examenes/202406 /home/Hinaja/UTNFRA_SO_2do_Parcial_Hinaja/
ls
cd ..
ñs
ls
cd UTNFRA_SO_2do_Parcial_Hinaja/
tree
sudo apt install tree
tree
ls -la
cat ~/.bash_history
history -a
ls -la
ls
cd ..
ls
UTN-FRA_SO_Examenes/
ls -la
la
ls
pwd
ls
ls -la
cat bash_history
pwd
cat .bash_history
ls
ls -la
