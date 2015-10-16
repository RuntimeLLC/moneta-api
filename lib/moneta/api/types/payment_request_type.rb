module Moneta
  module Api
    module Types
      # Тип, описывающий параметры операции в запросах. Отличается от TransactionRequestType тем, что в качестве получателя можно указывать не только номер счета.
      # Transaction parameters type for requests. The difference from TransactionRequestType is that payee may be addressed not only by account number rather than transaction ID, e-mail address or phone number.

    class PaymentRequestType < Entity
        # @return [Integer] Номер счета плательщика
        #   / Payer account number
        property :payer

        # @return [String] Может принимать следующие значения:
        #   E-mail получателя. Сумма зачисляется на "основной счет" получателя, найденного по данному E-mail#   Номер операции - если значение этого поля начинается с "0". То есть значение 012345678 означает оплату операции 12345678
        #   Телефон получателя - если значение этого поля начинается со знака "+". Сумма зачисляется на "основной счет" получателя, найденного по данному телефону
        #   Номер счета получателя
        #   / Content based semantic is as follows: E-mail address of payee. The amount is credited to primary account found by given e-mail address. Transaction ID prefixed with "0" (zero). For example, 012345678 means transaction 12345678. Phone number of payee prefixed with "+" (plus). The amount is credited to primary account found by given phone number. Account number of payee: 8 digits not starting with "0" (zero).
        property :payee

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

        # @return [String] Платежный пароль счета плательщика
        #   / Payment password for payer account
        property :payment_password

        # @return [String] Внешний номер операции
        #   / External transaction ID
        property :client_transaction

        # @return [String] Описание операции
        #   / Transaction description or comments
        property :description

        # @return [OperationInfo] Набор полей, которые необходимо сохранить в качестве атрибутов операции. Значения дат в формате dd.MM.yyyy HH:mm:ss
        #   / Key-value pairs that will be saved as a transaction attributes. Use format dd.MM.yyyy HH:mm:ss for date values
        property :operation_info, type: Moneta::Api::Types::OperationInfo

        # @return [String] Запрос для платежного пароля
        #   / Payment password challenge
        property :payment_password_challenge
      end
    end
  end
end
