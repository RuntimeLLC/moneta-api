module Moneta
  module Api
    module Request
      class CreateAccount
        attr_accessor :currency, :payment_password

        def to_hash
          { currency: currency, paymentPassword: payment_password }
        end
      end
    end
  end
end