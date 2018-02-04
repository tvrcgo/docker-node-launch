FROM node:slim
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

COPY ./sample /app/sample
RUN cd /app/sample \
  && npm i
CMD node /app/sample/index.js
