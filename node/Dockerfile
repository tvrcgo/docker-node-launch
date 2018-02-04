FROM node:slim
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

WORKDIR /app
COPY ./sample /app/sample

RUN npm install pm2 -g
RUN cd /app/sample && npm i
CMD pm2 start index.js
