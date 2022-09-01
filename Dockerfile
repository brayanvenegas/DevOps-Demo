#Requerimientos del sistema
#Descarga versión requerida
#Build stage 1
ARG version=node:alpine 
ARG app_port=3000
ENV APP_PORT=${app_port}



#Base para la imagen
FROM $version AS base
#Directorio de trabajo para cualquier instrucción
WORKDIR /app

#Copiar archivos
COPY package*.json ./
#Ejecuta cualquier comando en una nueva capa encima de la imagen actual 
RUN npm install 


#Build stage 2
FROM node:alpine AS build

WORKDIR /app
#Copiar archivos fuente
COPY --FROM=nodeApp /app/ ./

EXPOSE ${app_port}

#Ejecutar proyecto
CMD ["npm", "start"]
