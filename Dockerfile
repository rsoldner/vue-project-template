FROM node:slim

WORKDIR /code

COPY npmrc /root/.npmrc

RUN npm install --quiet --global \
      @vue/cli

COPY package*.json ./

RUN npm install

