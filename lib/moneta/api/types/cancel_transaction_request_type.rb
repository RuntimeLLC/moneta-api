module Moneta
  module Api
    module Types
      # Тип для запроса на отмену операции.
      # Transaction cancelation request type.

      class CancelTransactionRequestType
        include Moneta::Api::DataMapper

        # @return [Integer] Номер операции
        #   / Transaction ID
        property :transaction_id

        # @return [String] Код протекции
        #   / Protection code
        property :protection_code

        # @return [String] Описание операции
        #   / Transaction description or comments
        property :description
      end
    end
  end
end
