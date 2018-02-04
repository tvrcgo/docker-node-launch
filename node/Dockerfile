FROM node:slim
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

COPY ./sample /app/sample
RUN npm install pm2 -g \
  && cd /app/sample \
  && npm i
CMD pm2 start /app/sample/index.js
