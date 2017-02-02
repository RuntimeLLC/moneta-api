module Moneta
  module Api
    module Requests
      # Запрос возможности провести операцию в системе МОНЕТА.РУ. Запрос выполняется в пакетном режиме.
      # Transaction validation request. Request in batch mode.
      class VerifyPaymentBatchRequest < Types::PaymentBatchRequestType; end
    end
  end
end
