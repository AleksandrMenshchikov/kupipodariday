ARG NODE_VERSION=20.11.1

FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json ./

COPY ecosystem.config.js ./

RUN npm i -g @nestjs/cli && npm i pm2 -g && npm ci

COPY . .

RUN npm run build

ENTRYPOINT ["pm2-runtime", "start", "ecosystem.config.js"]

