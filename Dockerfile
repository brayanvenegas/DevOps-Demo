#Requerimientos del sistema
#Descarga versión requerida
#Build stage 1
ARG version=node:alpine 

#Base para la imagen
FROM ${version} AS base
ARG app_port=3000
ENV APP_PORT=${app_port}

#Directorio de trabajo para cualquier instrucción
WORKDIR /app

#Copiar archivos
COPY package*.json ./
#Ejecuta cualquier comando en una nueva capa encima de la imagen actual 
RUN npm install 

COPY . .

#Build stage 2
FROM ${version} AS build

WORKDIR /app
#Copiar archivos fuente
COPY --FROM=nodeApp /app/ ./

EXPOSE ${app_port}

#Ejecutar proyecto
CMD ["npm", "start"]
