module Moneta
  module Api
    module Requests
      # Запрос на регистрацию операции с блокировкой средств на счете плательщика в пакетном режиме.
      # Request for transactions registration and debiting funds from payer's account in batch processing mode.
      class AuthoriseTransactionBatchRequest < Types::TransferBatchRequestType; end
    end
  end
end
