module Moneta
  module Api
    module Types
      # Тип, описывающий атрибуты при ответе на запрос отмены операции.
      # Transaction cancelation response type.

      class CancelTransactionResponseType
        include Moneta::Api::DataMapper

        # @return [Integer] Номер операции
        #   / Transaction ID
        property :transaction_id

        # @return [String] Статус операции
        #   / Transaction status
        property :operation_status
      end
    end
  end
end
