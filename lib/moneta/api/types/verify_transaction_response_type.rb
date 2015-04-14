require_relative 'verify_transfer_response_type'

module Moneta
  module Api
    module Types
      # Ответ на запрос проверки проведения операции в системе МОНЕТА.РУ
      # Transaction verification response.

      class VerifyTransactionResponseType < VerifyTransferResponseType
        # @return [Integer] Идентификатор операции в системе МОНЕТА.РУ.
        #   / The identifier of transaction.
        property :transaction_id

        # @return [String] Статус операции в системе МОНЕТА.РУ.
        #   / Transaction status type in MONETA.RU
        property :operation_status
      end
    end
  end
end
