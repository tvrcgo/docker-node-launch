FROM centos:7
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

RUN yum -y install git

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.9.0

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash \
  && source $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

WORKDIR /app
