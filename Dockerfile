# Base image:
FROM ruby:2.7.0-slim

# Install dependencies
RUN apt-get update -qq \
  && apt-get install -y build-essential libpq-dev default-mysql-client apt-transport-https ca-certificates unzip xvfb curl git python \
  && rm -rf /var/lib/apt/lists/*

# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y --no-install-recommends nodejs \
  && npm install --global yarn