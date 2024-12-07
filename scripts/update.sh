#!/bin/bash

# Actualiza el sistema
echo "\n"
echo "<--Actualizando sistema-->"
sudo apt update && sudo apt upgrade -y
clear

# Borra paquetes obsoletos 
echo "\n"
echo "<--Eliminando paquetes obsoletos-->"
sudo apt-get autoremove && sudo apt-get clean
clear

# Libera espacio en disco
echo "\n"
echo "<--Liberando espacio en disco-->"
rm -rf ~/.cache/thumbnails/*
clear

echo "\n"
echo "<--Sistema actualizado y limpio-->"
