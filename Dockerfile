#Requerimientos del sistema
#Descarga versión requerida
FROM node:16

#Carpeta de alojamiento
WORKDIR /app

#Copiar archivos
COPY package*.json ./

#Ejecutar comandos
RUN npm install 

#Copiar archivos fuente
COPY . .

#Ejecutar proyecto
CMD ["npm", "start"]
