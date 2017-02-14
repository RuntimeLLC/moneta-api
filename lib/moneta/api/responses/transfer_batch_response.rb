module Moneta
  module Api
    module Responses
      # Ответ на запрос проведения платежа в пакетном режиме.
      # Transactions authorisation response in batch processing mode.

      class TransferBatchResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [Array[Moneta::Api::Types::TransactionBatchResponseType]] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в TransferBatchRequest.
        #   Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, type: Moneta::Api::Types::TransactionBatchResponseType
      end
    end
  end
end
