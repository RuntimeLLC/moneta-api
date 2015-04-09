module Moneta
  module Api
    module Responses
      # Ответ на запрос регистрации операций в пакетном режиме.
      # Transactions authorisation response in batch processing mode.

      class AuthoriseTransactionBatchResponse
        include Moneta::Api::DataMapper

        # @return [Array[Moneta::Api::Types::OperationInfoBatchResponseType]] Детали проведенных операций, либо описание ошибок, если операция не проведена.
        #   Порядок соответствует набору операций, переданных в AuthoriseTransactionBatchRequest.
        #   / Either transaction details or error description in order of appearance in corresponding request.
        property :transaction, Moneta::Api::Types::OperationInfoBatchResponseType
      end
    end
  end
end
