FROM node:slim
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

WORKDIR /app
COPY ./sample /app/sample

RUN npm install pm2 -g
CMD pm2 logs
