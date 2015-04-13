module Moneta
  module Api
    module Requests
      # Выставление счета к оплате в пакетном режиме.
      # Making new invoice (request for payment) in batch processing mode.

      class InvoiceBatchRequest < Types::InvoiceBatchRequestType; end
    end
  end
end
