module Moneta
  module Api
    module ServiceMethods
      # @param [Integer]
      # @return [Moneta::Api::Responses::FindAccountByIdResponse]
      def find_account_by_id(id)
        call(__method__, id)
      end

      # @param [Moneta::Api::Responses::CreateAccountRequest]
      # @return [Moneta::Api::Responses::CreateAccountResponse]
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
