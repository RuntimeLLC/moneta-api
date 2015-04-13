module Moneta
  module Api
    module Responses
      # Ответ на выставление счета к оплате в пакетном режиме.
      # Invoice registration response in batch processing mode.

      class InvoiceBatchResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::TransactionBatchResponseType] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в InvoiceBatchRequest.
        #   / Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, Types::TransactionBatchResponseType
      end
    end
  end
end
