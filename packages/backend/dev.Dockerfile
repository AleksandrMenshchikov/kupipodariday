FROM node:20-alpine
WORKDIR /app
COPY package*.json .
RUN npm ci
COPY . .
EXPOSE 4000
ENTRYPOINT ["npm", "run", "start:dev"]

