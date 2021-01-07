FROM node:14-alpine

WORKDIR /app
COPY . /app

RUN apk update

RUN npm install
