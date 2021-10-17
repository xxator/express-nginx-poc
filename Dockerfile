FROM node:10-alpine as builder
# install and cache app dependencies
COPY package.json package-lock.json ./
RUN npm install && mkdir /express-app && mv ./node_modules ./express-app

WORKDIR /express-app

COPY . .
EXPOSE 80
CMD ["node","app.js"]



