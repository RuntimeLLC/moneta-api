module Moneta
  module Api
    module Responses
      # Ответ на запрос проверки проведения операции в системе МОНЕТА.РУ. Ответ в пакетном режиме.
      # Response to a transaction validation request. Response in batch mode.
      class VerifyPaymentBatchResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [Array[Moneta::Api::Types::VerifyTransactionResponseType]] Детали операций, либо описание ошибок. Порядок соответствует набору операций,
        #   переданных в VerifyPaymentBatchRequest.
        #   Either information about transactions or error descriptions in the same order as in the VerifyPaymentBatch request.
        property :transaction, type: Moneta::Api::Types::VerifyTransactionResponseType
      end
    end
  end
end
