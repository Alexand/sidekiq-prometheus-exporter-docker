FROM ruby:2.5.1-alpine
LABEL maintainer "Alexand <j.a.cunha@gmail.com>"

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN gem install sidekiq -v "~> 5.0"
RUN gem install sidekiq-prometheus-exporter -v "~> 0.1"

ENV REDIS_URL "redis://redis:6379/0"

EXPOSE 9292

ENTRYPOINT [ "rackup" ]
CMD [ "-p", "9292", "-o", "0.0.0.0", "./config.ru" ]
