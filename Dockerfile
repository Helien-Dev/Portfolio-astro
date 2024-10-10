FROM node:latest
WORKDIR /app
COPY package*.json .
RUN npm install
RUN npm ci --audit+=false --fund=false
CMD [ "npm", "start" ]