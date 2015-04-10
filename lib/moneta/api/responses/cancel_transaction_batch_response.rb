module Moneta
  module Api
    module Responses
      # Ответ на запрос CancelTransactionBatchRequest.
      # Transactions cancelation response in batch processing mode.

      class CancelTransactionBatchResponse
        include Moneta::Api::DataMapper

        # @return [Array[MonetaCancelTransactionBatchResponseType]] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в CancelTransactionBatchRequest.
        #   / Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, Types::CancelTransactionBatchResponseType
      end
    end
  end
end
