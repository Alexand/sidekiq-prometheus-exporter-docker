FROM ruby:2.5.1-alpine
LABEL maintainer "Alexand <j.a.cunha@gmail.com@gmail.com>"

WORKDIR /usr/src/app
COPY . /usr/src/app

# Install required system packages and dependencies
RUN gem install sidekiq-prometheus-exporter 

ENTRYPOINT ["/bin/sh"]
