module Moneta
  module Api
    module Requests
      # Запрос возможности провести операцию в системе МОНЕТА.РУ.
      # Transaction verification request.

      class VerifyTransferRequest < Types::TransactionRequestType; end
    end
  end
end
