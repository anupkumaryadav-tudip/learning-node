# I am chekcing how this file are getting updated there, it should not
FROM node:18.16-alpine3.18

WORKDIR /usr/src/firstapp

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build
EXPOSE 3000

CMD [ "npm", "start" ]
