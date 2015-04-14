module Moneta
  module Api
    module Responses
      # Ответ на запрос завершения операций в пакетном режиме.
      # Transactions confirmation response in batch processing mode.

      class ConfirmTransactionBatchResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::OperationInfoBatchResponseType] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в ConfirmTransactionBatchRequest.
        #   / Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, Types::OperationInfoBatchResponseType
      end
    end
  end
end
