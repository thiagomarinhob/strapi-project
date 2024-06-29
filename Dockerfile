# Use a imagem oficial do node
FROM node:18

# Crie um diretório de trabalho
WORKDIR /app

# Copie o package.json e o package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie todos os arquivos para o diretório de trabalho
COPY . .

# Exponha a porta do Strapi
EXPOSE 1337

# Inicie o Strapi
CMD ["npm", "run", "develop"]
