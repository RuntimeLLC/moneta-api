module Moneta
  module Api
    module Responses
      # Ответ на запрос перевода денежных средств.
      #   / Money transfer registration response.
      class TransferResponse < Types::TransactionResponseType
        initialize_from_hash true
      end
    end
  end
end
