FROM ruby

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /home/app
COPY Gemfile ./
RUN bundle install

EXPOSE 3000
