require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PropsocialLite
  class Application < Rails::Application
    config.load_defaults 7.0

    config.log_level = :debug
    config.log_tags  = [:subdomain, :uuid]
    logger = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)

    config.cache_store = :redis_store, ENV['CACHE_URL'],
                         { namespace: 'propsocial-lite::cache' }

    config.active_job.queue_adapter = :sidekiq
  end
end
