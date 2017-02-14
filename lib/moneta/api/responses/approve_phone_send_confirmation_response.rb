module Moneta
  module Api
    module Responses
      # Ответ, который приходит на запрос ApprovePhoneSendConfirmationRequest.

      class ApprovePhoneSendConfirmationResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return[String] Номер телефона, на который было послано sms сообщение.
        property :phone_number
      end
    end
  end
end
