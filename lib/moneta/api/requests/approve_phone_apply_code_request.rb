module Moneta
  module Api
    module Requests
      # Запрос на подтверждение сотового телефона пользователя (поле cell_phone объекта tns:Profile).

      class ApprovePhoneApplyCodeRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ.
        #   / Если это поле не задано, то используется текущий пользователь.
        #   / Необязательный элемент.
        property :unit_id

        # @return [Integer] Необязательный элемент.
        property :profile_id

        # @return [String] Код подтверждения, который пришел пользователю в тексте sms сообщения
        property :confirmation_code
      end
    end
  end
end
