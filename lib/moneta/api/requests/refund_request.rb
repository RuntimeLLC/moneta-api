module Moneta
  module Api
    module Requests
      # Возврат средств по указанной операции.
      # Refund given transaction.

      class RefundRequest
        include Moneta::Api::DataMapper

        # @return [Integer] Номер операции в системе МОНЕТА.РУ, по которой необходимо вернуть деньги
        #   / Transaction ID in Moneta.ru
        property :transaction_id

        # @return [Float] Сумма, которую необходимо возвратить.
        #   Если сумма не указана, то сумма для возврата берется из указанной операции.
        #   Необязательное поле.
        #   / Amount to refund in source transaction payee's currency. If omitted the source transaction payees' amount is used. Optional.
        property :amount

        # @return [String] Платежный пароль
        #   / Payment password for payer account
        property :payment_password

        # @return [String] Внешний номер операции
        #   / External transaction ID
        property :client_transaction

        # @return [String] Описание операции
        #   / Transaction description or comments
        property :description

        # @return [Moneta::Api::Types::OperationInfo] Набор полей, которые необходимо сохранить в качестве атрибутов операции. Значения дат в формате dd.MM.yyyy HH:mm:ss
        #   / Key-value pairs that will be saved as a transaction attributes. Use format dd.MM.yyyy HH:mm:ss for date values
        property :operation_info, Types::OperationInfo

        # @return [String] Запрос для платежного пароля
        #   / Payment password challenge
        property :payment_password_challenge
      end
    end
  end
end
