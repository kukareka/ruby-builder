FROM ruby:2.4.2

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' >> /etc/apt/sources.list.d/postgresql.list && \
  wget --no-check-certificate -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add - && \
  apt-get update -qq && \
  apt-get install -qqy --no-install-recommends awscli ca-certificates cmake git nodejs zip postgresql-client-9.6 && \
  gem update bundler && \
  npm install -g @2fd/graphdoc
