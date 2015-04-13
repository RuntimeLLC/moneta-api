module Moneta
  module Api
    module Requests
      # Получить запрос для платежного пароля
      # Receive challenge for payment password

      class GetAccountPaymentPasswordChallengeRequest
        include Moneta::Api::DataMapper

        # @return [Integer] Номер счета
        #   / Account number
        property :account_id
      end
    end
  end
end
