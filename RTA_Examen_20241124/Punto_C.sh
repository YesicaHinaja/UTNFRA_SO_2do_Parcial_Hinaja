
# Modificar el archivo index.html
echo 'vim index.html'

# Crear el Dockerfile
echo 'vim Dockerfile'

# Construir la imagen
echo 'docker build -t hinaja/web1:latest .'

# extender el vg porque no tenia espacio suficiente para levantar la imagen
echo 'sudo pvcreate /dev/sde1'
echo 'sudo vgextend vg_datos /dev/sde1' 
echo 'sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker' 
echo 'sudo resize2fs /dev/mapper/vg_datos-lv_docker' 

#volver a construir la imagen
echo 'docker build -t hinaja/web1:latest .'


# Levantar la imagen en el puerto 80
echo 'docker run -d -p 80:80 hinaja/web1:latest' 

# verificar las imagenes con Docker
echo 'docker images' 
echo 'docker ps' 

#loguearse en dockerhub luego de generar el token de acceso
echo docker login -u hinaja

#subir la imagen
echo docker push hinaja/web1:latest .

