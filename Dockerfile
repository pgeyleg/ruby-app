FROM ruby:2.5.5 AS base
ENV APPUSER=app \
    LC_ALL=en_US.UTF-8
WORKDIR /$APPUSER
RUN gem update bundler
