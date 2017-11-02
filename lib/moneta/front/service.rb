require 'moneta/api/options'

module Moneta
  module Front
    class Service
      DEMO = 'https://demo.moneta.ru/x509'
      PRODUCTION = 'https://www.moneta.ru/x509'

      include ServiceMethods

      def initialize(p12_cert_path, p12_cert_password, params = {})
        @p12 = OpenSSL::PKCS12.new(File.read(p12_cert_path), p12_cert_password)
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
        demo ? DEMO : PRODUCTION
      end

      def ssl_options
        { client_cert: @p12.certificate, client_key: @p12.key, verify: false }
      end
    end
  end
end
