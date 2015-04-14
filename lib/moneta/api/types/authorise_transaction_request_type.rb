require_relative 'key_value_attribute'
require_relative 'operation_info'
require_relative 'transaction_request_type'

module Moneta
  module Api
    module Types
      # Запрос на регистрацию операции с блокировкой средств на счете плательщика.
      # Завершить (подтвердить) операцию можно с помощью ConfirmTransactionRequest.
      # Если операция не будет закончена с помощью ConfirmTransactionRequest, то
      # операция будет отменена автоматически по истечению срока блокировки.
      # Request for transaction registration and debiting funds from payer's account.
      # To finish (confirm) this transaction use ConfirmTransactionRequest.
      # Authorised but not cofirmed transactions are cancelled automaticaly after authorisation expiry.

      class AuthoriseTransactionRequestType < TransactionRequestType
        # @return [Integer] Номер операции. Необязательное поле.
        #   / Transaction ID. Optional.
        property :transaction_id
      end
    end
  end
end
