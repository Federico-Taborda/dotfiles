#!/bin/bash

# Verificar si se proporciona un nombre de folder
if [ -z "$1" ]; then
    echo "Por favor, proporciona el nombre del folder"
    exit 1
fi

folder=$1

echo "Creando '$folder' e inicializando proyecto"
if ! mkdir "$folder"; then
    echo "Error: El folder '$folder' ya existe o no se pudo crear."
    exit 1
fi

cd "$folder" || exit 1

npm init -y
npm pkg set type=module
npm set-script start="node src/index.js"
npm set-script dev="node --env-file .env --watch src/index.js"
echo "Proyecto inicializado"

echo "Creando README y archivos de configuracion"
touch README.md .env .gitignore
echo node_modules >> .gitignore
echo .env >> .gitignore
echo "Configuraciones creadas"

# Genera la estructura del proyecto
echo "Creando estructura del proyecto"
mkdir src
mkdir ./src/controllers ./src/routes ./src/database ./src/models ./src/middlewares .src/tests
touch ./src/index.js ./src/app.js ./src/config.js 

echo "# Proyecto $folder" > README.md
echo "PORT=3000" > .env
echo "const express = require('express');\nconst app = express();\n\napp.listen(process.env.PORT || 3000, () => {\n  console.log('Server running');\n});" > ./src/index.js
echo "Estructura creada"

# Instalacion de dependencias
echo "Instalando dependencias"
npm install express cors express-validator express-rate-limit
echo "Express instalado"

echo "Instalando Jest"
npm install -D jest supertest
echo "Jest instalado"

echo "¡Proyecto listo para trabajar! Abriendo en VS Code..."
code .