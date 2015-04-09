module Moneta
  module Api
    module Types
      # Тип, описывающий атрибуты операции в ответах.
      # Transaction attributes type for responses.

      class TransactionResponseType
        include Moneta::Api::DataMapper

        # @return [String] Текущий статус операции
        #   / Current transaction status
        property :status

        # @return [Date] Время последней модификации операции
        #   / Transaction modification timestamp
        property :date_time

        # @return [Integer] Номер операции
        #   / Transaction ID in MONETA.RU
        property :transaction

        # @return [String] Внешний номер операции
        #   / External transaction ID
        property :client_transaction
      end
    end
  end
end
