module Moneta
  module Api
    module Requests
      # Запрос возможности провести операцию в системе МОНЕТА.РУ. Отличается от VerifyTransferRequest тем, что в качестве получателя можно указывать не только номер счета.
      # Transaction verification request. The difference from VerifyTransferRequest is that payee may be addressed not only by account number rather than transaction ID, e-mail address or phone number.

      class VerifyPaymentRequest < Types::PaymentRequestType; end
    end
  end
end
