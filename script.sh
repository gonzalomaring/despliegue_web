#!/bin/sh

# Generamos el html después de hacer los cambios
hugo -D

#Subimos los cambios a nuestro repositorio en el cual están los ficheros hugo

git add .
git commit -am "Cambios"
git push

#Copiamos los archivos que ha generado hugo a nuestro repositorio el cual tiene la carpeta public

cp -R public/* ../hugo_render/public

#Nos movemos hasta donde hemos copiado los ficheros y subiremos los cambios al github

cd ../hugo_render/
git add .
cd public
git add .
git commit -am "Cambios"
git push