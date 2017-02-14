module Moneta
  module Api
    module Responses
      # Ответ на выставление счета к оплате.
      # Invoice registration response.

      class InvoiceResponse < Types::TransactionResponseType
        include ResponsePropertyMapper
      end
    end
  end
end
