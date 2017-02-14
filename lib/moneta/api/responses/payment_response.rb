module Moneta
  module Api
    module Responses
      # Ответ на запрос перевода денежных средств.
      # Money transfer registration response.

      class PaymentResponse < Types::OperationInfo
        include ResponsePropertyMapper
      end
    end
  end
end
