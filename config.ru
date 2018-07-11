require 'sidekiq'
require 'sidekiq/prometheus/exporter'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"] }
end

run Sidekiq::Prometheus::Exporter.to_app
