module Moneta
  module Api
    module Responses
      # Ответ на запрос проведения платежа в пакетном режиме.
      # Transactions authorisation response in batch processing mode.

      class TransferBatchResponse
        include Moneta::Api::DataMapper

        # @return [Array[Moneta::Api::Types::TransferBatchResponseType]] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в TransferBatchRequest.
        #   Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, type: Moneta::Api::Types::TransferBatchResponseType
      end
    end
  end
end
