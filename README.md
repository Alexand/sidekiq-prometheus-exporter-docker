# sidekiq-prometheus-exporter-docker

Containerized version of [sidekiq-prometheus-exporter](https://github.com/Strech/sidekiq-prometheus-exporter).
Thanks @Stretch for providing this amazing gem.

## How it works:

- Tries to connect on `redis:6379` (accepts custom redis url by setting the env `REDIS_URL`)
- Exposes rack server on port `9292`
- GET '/metrics' endpoint to serve the prometheus file

## Usage Example

``` sh
docker pull redis                     # if you don't have redis already running
docker run --name some-redis -d redis # if you don't have redis already running

docker pull alexand/sidekiq-prometheus-exporter
docker run -it --rm --link some-redis:redis -p 9292:9292 alexand/sidekiq-prometheus-exporter

curl localhost:9292/metrics 
```

## License

Please see [LICENSE](https://github.com/mperham/sidekiq/blob/master/LICENSE) for licensing details.