FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app-back-1
WORKDIR /app-back-1
ADD Gemfile /app-back-1/Gemfile
ADD Gemfile.lock /app-back-1/Gemfile.lock
RUN bundle install
COPY . /app-back-1
