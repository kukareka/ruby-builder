FROM ruby:2.1.10

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get update -qq && \
  apt-get install -qqy --no-install-recommends awscli ca-certificates cmake git nodejs zip libicu-dev && \
  gem update bundler
