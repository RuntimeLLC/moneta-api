module Moneta
  module Api
    module Requests
      # Запрос на завершение (подтверждение) операций в пакетном режиме.
      # Transactions confirmation request in batch processing mode.

      class ConfirmTransactionBatchRequest < Types::ConfirmTransactionBatchRequestType; end
    end
  end
end
