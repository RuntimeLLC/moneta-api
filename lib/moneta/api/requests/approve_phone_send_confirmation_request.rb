module Moneta
  module Api
    module Requests
      # Запрос на подтверждение сотового телефона пользователя (поле cell_phone объекта tns:Profile).
      # Телефон должен быть указан у данного пользователя и неподтвержден.

      class ApprovePhoneSendConfirmationRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ.
        #   / Если это поле не задано, то используется текущий пользователь.
        #   / Необязательный элемент.
        property :unit_id

        # @return [Integer] Необязательный элемент.
        property :profile_id

        # @return [String] Текст sms сообщения, которое отправляется пользователю.
        #   / Текст должен содержать подстановку {CODE}, которая будет заменена настоящим кодом подтверждения.
        #   / Важно: Длина сообщения, если не содержит русских букв - 160 символов, если содержит русские буквы - 70 символов.
        #   / По умолчанию используется - Код подтверждения: {CODE}.
        #   / Необязательный элемент.
        #   / Максимальная длина: 160
        property :text
      end
    end
  end
end
