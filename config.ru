require 'sidekiq'
require 'sidekiq/prometheus/exporter'

redis_config = { url: ENV["REDIS_URL"] }
redis_config.merge!(namespace: ENV["REDIS_NAMESPACE"]) if ENV["REDIS_NAMESPACE"]

Sidekiq.configure_client do |config|
  config.redis = redis_config
end

run Sidekiq::Prometheus::Exporter.to_app
