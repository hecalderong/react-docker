#!/bin/bash
# docker/init.sh

# Verificar si el proyecto ya existe
if [ ! -f "app/package.json" ]; then
    echo "Creando nuevo proyecto Node.js..."

    npx create-react-app app --no-git 
    # Inicializar nuevo proyecto    
#npx react-native init .
    
    # Instalar dependencias básicas
    echo "Instalando dependencias básicas..."
    cd app
    npm i web-vitals --save-dev
    npm install
    #echo "Instalando dependencias de Expo..."
    #   expo install

    echo "Iniciando el servidor en modo desarrollo..."
    #cd app
    npm start
else
    echo "El proyecto ya existe, instalando dependencias..."
    cd app
    npm i web-vitals --save-dev
    npm install
    echo "Iniciando el servidor en modo desarrollo..."
    npm start
fi  

# Ejecutar el comando especificado en el archivo docker-compose.yml             
