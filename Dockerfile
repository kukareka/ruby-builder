FROM ruby:2.3.1

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get update && \
  apt-get install -y --no-install-recommends ca-certificates git nodejs
