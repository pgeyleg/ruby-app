#!/bin/bash
set -e

bundle install --jobs 20 --retry 5

bundle exec rake db:setup

rm -f tmp/pids/server.pid
bundle exec rails server -b 0.0.0.0 -p $RAILS_PORT
