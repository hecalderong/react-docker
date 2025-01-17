    # Dockerfile
FROM node:latest
COPY docker/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh
# Instalar dependencias necesarias
#RUN apk add --no-cache bash git openssh
#RUN npm install -g react-native-cli
#RUN npm install -g expo-cli
# Crear directorio de la aplicación
WORKDIR /app
RUN usermod -u 1000 node
RUN chown -R node:node /app
USER node
#RUN npx create-react-app app
#WORKDIR /app
#RUN chown -R node:node /app && chmod +x /usr/local/bin/init.sh
#USER node

# Instalar React Native CLI globalmente


# Copiar package.json y package-lock.json (si existen)
#COPY package*.json ./

# Instalar dependencias del proyecto
#RUN npm install

# Copiar el resto del código
#       COPY . .

# Exponer puertos necesarios
EXPOSE 3000

# Comando por defecto
#       CMD ["npm", "start"]