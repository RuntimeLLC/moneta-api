module Moneta
  module Api
    module Requests
      # Запрос на регистрацию операции с блокировкой средств на счете плательщика.
      # Завершить (подтвердить) операцию можно с помощью ConfirmTransactionRequest.
      # Если операция не будет закончена с помощью ConfirmTransactionRequest, то
      # операция будет отменена автоматически по истечению срока блокировки.
      # Request for transaction registration and debiting funds from payer's account.
      # To finish (confirm) this transaction use ConfirmTransactionRequest.
      # Authorised but not cofirmed transactions are cancelled automaticaly after authorisation expiry.

      class AuthoriseTransactionRequest < Types::AuthoriseTransactionRequestType; end
    end
  end
end
