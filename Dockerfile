FROM ruby

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /home/app
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install

COPY . .

COPY docker-entrypoint.sh ./
RUN chmod +x ./docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]