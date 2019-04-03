FROM node:slim

WORKDIR /code

# Useful for when behind a coroporate firewall
COPY npmrc /root/.npmrc

# vue cli was used to create the project template (vue create vue-project-template)
RUN npm install --quiet --global \
      @vue/cli

# Copy package.json separately to leverage docker caching (code changes more frequently
COPY package*.json ./

RUN npm install

COPY . /code

