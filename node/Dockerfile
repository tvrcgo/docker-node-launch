FROM centos:latest

MAINTAINER tvrcgo <tvrcgo@gmail.com>

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 6.9.1

RUN yum -y install git

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

WORKDIR /home/apps
COPY ./sample /home/apps/
RUN cd /home/apps/sample \
    && npm install koa@2

CMD node /home/apps/sample/index.js &