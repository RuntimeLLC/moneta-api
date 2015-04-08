module Moneta
  module Api
    module Requests
      # Запрос на перевод денежных средств. Отличается от TransferRequest тем, что в качестве получателя можно указывать не только номер счета.
      #   / Money Transfer Request. The difference from TransferRequest is that payee may be addressed not only by account number rather than transaction ID, e-mail address or phone number.
      class PaymentRequest < Types::PaymentRequestType; end
    end
  end
end
