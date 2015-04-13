require_relative 'transaction_response_type'

module Moneta
  module Api
    module Types
      # Тип, описывающий атрибуты операции в ответах в пакетном запросе.
      # Transaction attributes type for responses in batch processing mode.

      class TransactionBatchResponseType
        include Moneta::Api::DataMapper

        # @return [String] Поле содержит описание ошибки, если операция не была проведена.
        #   В этом случае поле transaction - пустое. Если операция проведена,
        #   то поле error пустое, а поле transaction содержит детали операции.
        #   / Error description in case of tranfer processing failure. If transfer processed successfully "error" is empty and "transaction" element contains transaction details.
        property :error

        # @return [Moneta::Api::Types::TransactionResponseType]
        property :transaction, Types::TransactionResponseType

        # @return [String] Поле содержит код ошибки. Поле заполнено только тогда, когда есть описание ошибки в поле error.
        #   Для получения этого поля в запросе необходимо выставлять атрибут version равный или больше VERSION_2.
        #   Коды ошибок совпадают со значением элемента faultDetail (смотрите описание для этого элемента).
        #   / The field contains error code. The field "errorCode" is specified if the field "error" is present and contains error description. For retrieving errorCode the request attribute "version" has to be set to "VERSION_2" or grater. Error codes values correspond to "faultDetail" description.
        property :error_code
      end
    end
  end
end
