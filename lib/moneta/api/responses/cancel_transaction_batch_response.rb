module Moneta
  module Api
    module Responses
      # Ответ на запрос CancelTransactionBatchRequest.
      # Transactions cancelation response in batch processing mode.

      class CancelTransactionBatchResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [Array[Moneta::Api::Types::CancelTransactionBatchResponseType]] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в CancelTransactionBatchRequest.
        #   / Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, type: Types::CancelTransactionBatchResponseType
      end
    end
  end
end
