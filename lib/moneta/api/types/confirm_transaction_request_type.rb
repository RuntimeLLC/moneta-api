module Moneta
  module Api
    module Types
      # Тип для запроса подтверждения операции.
      # Transaction confirmation request type.

      class ConfirmTransactionRequestType
        include Moneta::Api::DataMapper

        # @return [Integer] Номер операции
        #   / Transaction ID
        property :transaction_id

        # @return [String] Платежный пароль счета плательщика
        #   / Payment password for payer account
        property :payment_password

        # @return [String] Код протекции
        #   / Protection code
        property :protection_code

        # @return [Moneta::Api::Types::OperationInfo] Набор полей, которые необходимо сохранить в качестве атрибутов операции. Значения дат в формате dd.MM.yyyy HH:mm:ss
        #   / Key-value pairs that will be saved as a transaction attributes. Use format dd.MM.yyyy HH:mm:ss for date values
        property :operation_info

        # @return [Float] Сумма операции.
        #   Если флаг isPayerAmount отсутствует
        #   и пользователь имеет доступ только к счету плательщика,
        #   то интерпретируется как сумма к списанию (в валюте плательщика).
        #   Если флаг isPayerAmount отсутствует
        #   и пользователь имеет доступ только к счету получателя,
        #   то интерпретируется как сумма к зачислению (в валюте получателя).
        #   / Transaction amount. If isPayerAmount is omitted and user has access only to payer account, then is interpreted as debit amount (in payer's currency). If isPayerAmount is omitted and user has access only to payee account, then is interpreted as credit amount (in payee's currency).
        property :amount

        # @return [Boolean] Если пользователь имеет доступ как к счету плательщика, так и счету получателя,
        #   то флаг isPayerAmount обязателен.
        #   Если флаг isPayerAmount установлен (true), то amount используется как сумма к списанию (в валюте плательщика).
        #   Если флаг isPayerAmount сброшен (false), то amount используется как сумма к зачислению (в валюте получателя).
        #   / If user has access to both accounts, then isPayerAmount flag is obligatory. If isPayerAmount flag is "true", then amount is used as debit amount (in payer's currency). If isPayerAmount flag is "false", then amount is used as credit amount (in payee's currency).
        property :is_payer_amount

        # @return [String] Запрос для платежного пароля
        #   / Payment password challenge
        property :payment_password_challenge

        # @return [String] Внешний номер операции
        #   / External transaction ID
        property :client_transaction
      end
    end
  end
end
