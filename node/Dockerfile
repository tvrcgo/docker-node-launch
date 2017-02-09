FROM node:slim

MAINTAINER tvrcgo <tvrcgo@gmail.com>

WORKDIR /apps
RUN npm install pm2 -g

EXPOSE 8080

CMD pm2 logs