FROM ruby:3.2.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /app
COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock
RUN bundle install
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo