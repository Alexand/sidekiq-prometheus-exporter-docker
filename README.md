# sidekiq-prometheus-exporter-docker

Containerized version of [sidekiq-prometheus-exporter](https://github.com/Strech/sidekiq-prometheus-exporter)

He image starts a container with a simple Rack application trying to connect redis. 

By default it will:

- Try to connect on `redis:6379`
- Try to start the rack server on port `9292`
- Exposes a 'localhost:9292/metrics' endpoint to serve the prometheus file

Usage Example:

``` sh
docker pull alexand/sidekiq-prometheus-exporter
docker run --rm alexand/sidekiq-prometheus-exporter
```

