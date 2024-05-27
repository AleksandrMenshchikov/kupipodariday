ARG NODE_VERSION=20.11.1

FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json ./

RUN npm i -g @nestjs/cli && npm ci

COPY . .

EXPOSE 4000

ENTRYPOINT ["npm", "run", "start:dev"]
