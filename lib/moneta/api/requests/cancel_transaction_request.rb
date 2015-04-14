module Moneta
  module Api
    module Requests
      # Запрос на отмену операции. Отменять операцию можно при выполнении всех условий:
      # незавершенные операции;
      # если есть доступ к счету плательщика и счету получателя (то есть свои внутренние операции).
      # Transaction cancelation request if transasction fulfils following conditions:
      # transaction is in processing (incompleted);
      # principal has an access to both (payer and payee) accounts.

      class CancelTransactionRequest < Types::CancelTransactionRequestType; end
    end
  end
end
