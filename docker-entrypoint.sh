#!/bin/bash -xe

rm -f /home/app/tmp/pids/server.pid

bundle exec rake db:create
bundle exec rake db:migrate

exec "$@"
