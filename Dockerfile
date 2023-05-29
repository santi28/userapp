# Utilizamos la imagen de node 18 en alpine como base
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copiamos todos los archivos del proyecto al directorio de trabajo
COPY package*.json ./
COPY . .

# Instalamos las dependencias y compilamos el proyecto
RUN npm install

# Exponemos el puerto 3000
EXPOSE 3000

# Iniciamos la aplicación
CMD [ "npm", "run", "start" ]