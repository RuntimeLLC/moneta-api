module Moneta
  module Api
    module ServiceMethods
      # @param [Moneta::Api::Requests::AuthoriseTransactionRequest]
      # @return [Moneta::Api::Responses::AuthoriseTransactionResponse]
      def authorise_transaction(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::AuthoriseTransactionBatchRequest]
      # @return [Moneta::Api::Responses::AuthoriseTransactionBatchResponse]
      def authorise_transaction_batch(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::CancelTransactionBatchRequest]
      # @return [Moneta::Api::Responses::CancelTransactionBatchResponse]
      def cancel_transaction_batch(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::ConfirmTransactionRequest]
      # @return [Moneta::Api::Responses::ConfirmTransactionResponse]
      def confirm_transaction(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::ConfirmTransactionBatchRequest]
      # @return [Moneta::Api::Responses::ConfirmTransactionBatchResponse]
      def confirm_transaction_batch(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::CreateAccountRequest]
      # @return [Moneta::Api::Responses::CreateAccountResponse]
      def create_account(request)
        call(__method__, request.to_hash)
      end

      # @param [String]
      # @return [Moneta::Api::Responses::FindAccountByAliasResponse]
      def find_account_by_alias(request)
        call(__method__, request)
      end

      # @param [Moneta::Api::Requests::FindAccountsListRequest]
      # @return [Moneta::Api::Responses::FindAccountsListResponse]
      def find_accounts_list(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::FindOperationsListRequest]
      # @return [Moneta::Api::Responses::FindOperationsListResponse]
      def find_operations_list(request)
        call(__method__, request.to_hash)
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

      # @param [Moneta::Api::Requests::FindLastOperationsListRequest]
      # @return [Moneta::Api::Responses::FindLastOperationsListResponse]
      def find_last_operations_list(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::GetAccountPaymentPasswordChallengeRequest]
      # @return [Moneta::Api::Responses::GetAccountPaymentPasswordChallengeResponse]
      def get_account_payment_password_challenge(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::InvoiceRequest]
      # @return [Moneta::Api::Responses::InvoiceResponse]
      def invoice(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::InvoiceBatchRequest]
      # @return [Moneta::Api::Responses::InvoiceBatchResponse]
      def invoice_batch(request)
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

      # @param [Moneta::Api::Requests::VerifyPaymentRequest]
      # @return [Moneta::Api::Responses::VerifyPaymentResponse]
      def verify_payment(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::VerifyTransferRequest]
      # @return [Moneta::Api::Responses::VerifyTransferResponse]
      def verify_transfer(request)
        call(__method__, request.to_hash)
      end

      # @param [Moneta::Api::Requests::VerifyTransactionRequest]
      # @return [Moneta::Api::Responses::VerifyTransactionResponse]
      def verify_transaction(request)
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
