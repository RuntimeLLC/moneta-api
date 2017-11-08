require 'moneta/api/options'

module Moneta
  module Front
    class Service
      DEMO = Moneta::Constants::Settings::DEMO
      PRODUCTION = Moneta::Constants::Settings::PRODUCTION
      PATH = Moneta::Constants::Settings::CERTIFICATE_PATH

      include ServiceMethods

      def initialize(certificate, key, params = {})
        @certificate = certificate
        @key = key
        @connection = connection(Moneta::Api::Options.new(params))
      end

      def request(url)
        @connection.get(url)
      end

      private

      def connection(options)
        Faraday.new(url: endpoint(options.demo?), ssl: ssl_options) do |faraday|
          faraday.use ::FaradayMiddleware::FollowRedirects, limit: 10

          if options.logger
            faraday.response :logger, options.logger, bodies: options.log_bodies? do |logger|
              options.filter.each do |subject, replacement|
                logger.filter(/#{ subject }/, replacement)
              end
            end
          end

          faraday.adapter :net_http do |http|
            http.open_timeout = options.open_timeout
          end
        end
      end

      def endpoint(demo)
        (demo ? DEMO : PRODUCTION) + PATH
      end

      def ssl_options
        { client_cert: @certificate, client_key: @key, verify: false }
      end
    end
  end
end
