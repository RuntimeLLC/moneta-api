module Moneta
  module Api
    module Types
      # Тип для запроса подтверждения операции в пакетном режиме.
      # Batch mode transaction confirmation request type.

      class ConfirmTransactionBatchRequestType < BatchRequestType

        private

        def basic_transaction_type
          Moneta::Api::Types::ConfirmTransactionRequestType
        end
      end
    end
  end
end
