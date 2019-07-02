FROM ruby:2.5.5 AS base
WORKDIR /app
RUN gem update bundler
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs yarn
ENV NPM_VERSION=6.6.0
ENV YARN_VERSION=1.17.2
RUN npm install -g npm@${NPM_VERSION}
RUN npm install -g yarn@${YARN_VERSION}
