module Moneta
  module Api
    module Responses
      # Ответ содержит строку запроса для платежного пароля
      # Response contains of challenge string for payment password

      class GetAccountPaymentPasswordChallengeResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [String] Запрос для платежного пароля
        #   / Challenge of payment password
        property :payment_password_challenge
      end
    end
  end
end
