FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /scaffold-docker
COPY Gemfile Gemfile.lock /scaffold-docker/
RUN bundle install
