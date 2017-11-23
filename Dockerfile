FROM ruby:2.4.2

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get update -qq && \
  apt-get install -qqy --no-install-recommends awscli ca-certificates git nodejs zip
