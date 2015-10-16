module Moneta
  module Api
    module Types
      # Тип, описывающий состояние операции в системе МОНЕТА.РУ
      # Type describes verification status of transaction.

      class VerifyTransferResponseType
        include Moneta::Api::DataMapper

        # @return [Boolean] Если поле равно true, то данная операция может
        #   быть проведена в системе МОНЕТА.РУ
        #   / If true the transaction may be processed in MONETA.RU
        property :is_transaction_valid

        # @return [String] Описание текущего статуса операции.
        #   / Description of current transaction status.
        property :description

        # @return [ForecastTransactionResponseType] Если операция может быть проведена, то в данном поле содержатся детали операции.
        #   Иначе - это поле пустое.
        #   / Additional information if transaction may be processed. Otherwise empty.
        property :forecast, type: ForecastTransactionResponseType

        # @return [String] Поле содержит код ошибки. Поле заполнено только тогда, когда есть описание ошибки в поле description.
        #   Для получения этого поля в запросе необходимо выставлять атрибут version равный или больше VERSION_2.
        #   Коды ошибок совпадают со значением элемента faultDetail (смотрите описание для этого элемента).
        #   / The field contains error code. The field "errorCode" is specified if the field "description" is present and contains error description. For retrieving errorCode the request attribute "version" has to be set to "VERSION_2" or grater. Error codes values correspond to "faultDetail" description.
        property :error_code
      end
    end
  end
end
