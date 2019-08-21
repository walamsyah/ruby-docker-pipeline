# Base image:
FROM ruby:2.6.3

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev apt-transport-https ca-certificates unzip xvfb

# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm install --global yarn