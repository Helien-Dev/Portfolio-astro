FROM node:latest
RUN apt-get update && apt-get install -y git curl neofetch zsh zplug
WORKDIR /app
COPY package*.json .
RUN npm install
RUN npm ci --audit+=false --fund=false
CMD [ "npm", "start" ]