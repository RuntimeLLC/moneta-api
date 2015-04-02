module Moneta
  module Api
    module ServiceMethods
      def find_account_by_id(id)
        call(__method__, id)
      end

      def create_account(request)
        call(__method__, request.to_h)
      end

      private

      def call(method, request_message)
        response = client.call(method, { message: request_message })
        ResponseFactory.build(response)
      end
    end
  end
end