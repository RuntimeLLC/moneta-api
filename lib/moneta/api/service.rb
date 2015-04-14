module Moneta
  module Api
    class Service
      DEMO = 'https://demo.moneta.ru/services.wsdl'
      PRODUCTION = 'https://www.moneta.ru/services.wsdl'

      include ServiceMethods
      attr_reader :client

      def initialize(username, password, params = {})
        @client = Savon.client(prepare_params(username, password, params))
      end

      private

      def prepare_params(username, password, params)
        demo_mode = params.delete(:demo_mode)

        { wsse_auth: [ username, password ] }
          .merge(params)
          .merge(wsdl: wsdl_url(demo_mode))
      end

      def wsdl_url(demo_mode)
        demo_mode ? DEMO : PRODUCTION
      end
    end
  end
end
