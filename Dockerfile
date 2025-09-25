# Utilise une image Node officielle
FROM node:18

# Crée un dossier de travail
WORKDIR /app

# Copie les fichiers package.json / package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste du code
COPY . .

# Expose le port (ex: 3000)
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
