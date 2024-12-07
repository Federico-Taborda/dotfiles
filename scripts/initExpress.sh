#!/bin/bash

folder=$1
echo "Creando '$folder' e inicializando proyecto"
mkdir $folder && cd $folder
npm init -y
echo "Proyecto inicializado"

echo "Creando README y archivos de configuracion"
touch README.md .env 
touch .gitignore && echo node_modules >> .gitignore
echo "Configuraciones creadas"

echo "Creando estructura del proyecto"
mkdir src
mkdir ./src/controllers ./src/routes ./src/database
touch ./src/index.js ./src/config.js
echo "Estructura creada"

echo "Instalando express"
npm install express
echo "Express instalado"

echo "A CODEAR!!!"
code .