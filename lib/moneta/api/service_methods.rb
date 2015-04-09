module Moneta
  module Api
    module ServiceMethods
      # @param [Moneta::Api::Requests::AuthoriseTransactionBatchRequest]
      # @return [Moneta::Api::Responses::AuthoriseTransactionBatchResponse]
      def authorise_transaction_batch(request)
        call(__method__, request.to_hash)
      end

      # @param [String]
      # @return [Moneta::Api::Responses::FindAccountByAliasResponse]
      def find_account_by_alias(request)
        call(__method__, request)
      end

      # @param [Moneta::Api::Requests::ForecastTransactionRequest]
      # @return [Moneta::Api::Responses::ForecastTransactionResponse]
      def forecast_transaction(request)
        call(__method__, request.to_hash)
      end

      # @param [Integer]
      # @return [Moneta::Api::Responses::FindAccountByIdResponse]
      def find_account_by_id(id)
        call(__method__, id)
      end

      # @param [Moneta::Api::Requests::CreateAccountRequest]
      # @return [Moneta::Api::Responses::CreateAccountResponse]
      def create_account(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::TransferRequest]
      # @return [Moneta::Api::Responses::TransferResponse]
      def transfer(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::PaymentRequest]
      # @return [Moneta::Api::Responses::PaymentResponse]
      def payment(request)
        call(__method__, request.to_hash)
      end

      private

      def call(method, request_message)
        response = client.call(method, { message: request_message })
        ResponseFactory.build(response)
      end
    end
  end
end
