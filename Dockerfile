FROM ruby:3.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs npm

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .