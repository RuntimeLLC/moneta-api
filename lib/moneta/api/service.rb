module Moneta
  module Api
    class Service
      def initialize(username, password, params = {})
        @client = Savon.client(prepare_params(username, password, params))
      end

      def find_account_by_id(id)
        @client.call(:find_account_by_id, { message: id })
      end

      private

      attr_reader :client

      def prepare_params(username, password, params)
        { wsdl: 'https://demo.moneta.ru/services.wsdl', wsse_auth: [ username, password ] }
      end
    end
  end
end