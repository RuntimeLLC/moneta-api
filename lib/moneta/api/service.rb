module Moneta
  module Api
    class Service
      DEMO = 'https://demo.moneta.ru'
      PRODUCTION = 'https://www.moneta.ru'
      URL = '/services'

      include ServiceMethods

      def initialize(username, password, params = {})
        @username = username
        @password = password
        @connection = connection(Options.new(params))
      end

      def call_method(method_id, request)
        @connection.post do |req|
          req.url URL
          req.headers['Content-Type'] = 'application/json;charset=UTF-8'
          req.body = request_body(method_id, request).to_json
        end
      end

      private

      def connection(options)
        Faraday.new(url: endpoint(options.demo?)) do |faraday|
          faraday.adapter :net_http do |http|
            http.open_timeout = options.open_timeout
          end

          if options.logger
            faraday.response :logger, options.logger, bodies: options.log_bodies? do | logger |
              logger.filter(/(#{ @password })/,'[FILTERED]')

              options.filter.each do |subject, replacement|
                logger.filter(/#{ subject }/, replacement)
              end
            end
          end
        end
      end

      def endpoint(demo)
        demo ? DEMO : PRODUCTION
      end

      def request_body(method_id, request)
        {
          'Envelope' => {
            'Header' => {
              'Security' => {
                'UsernameToken' => {
                  'Username' => @username,
                  'Password' => @password
                }
              }
            },
            'Body' => {
              method_name(method_id) => request_hash(request)
            }
          }
        }
      end

      def method_name(method_id)
        "#{ method_id.to_s.camelize }Request"
      end

      def request_hash(request)
        request.respond_to?(:to_hash) ? request.to_hash : { value: request }
      end
    end
  end
end
