# Imagem node
FROM node:18

# Cria um diretorio no docker
WORKDIR /app

#Copia o arquivo package.json e instala dependencias
COPY package*json ./
RUN npm install

#Copia o codigo do projeto para o container
COPY . .

#Exponhe a porta usada pelo servidor
EXPOSE 3000

#Comando para iniciar o servidor
CMD ["node","server.js"] 