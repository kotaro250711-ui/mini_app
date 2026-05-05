FROM ruby:3.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs npm

ENV RAILS_ENV=production
ENV SECRET_KEY_BASE=dummy

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bin/rails assets:precompile

CMD ["bash", "-c", "bin/rails db:migrate && bin/rails server -b 0.0.0.0 -p ${PORT:-3000}"]