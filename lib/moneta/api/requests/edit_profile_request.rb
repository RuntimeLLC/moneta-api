class EditProfileRequest
end

module Moneta
  module Api
    module Requests
      # Запрос на редактирование пользователя в системе МОНЕТА.РУ.
      # Request for editing a MONETA.RU user profile.
      class EditProfileRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ, данные которого надо отредактировать.
        #   The unique identifier of the MONETA.RU user that you want to edit.
        property :unit_id

        property :profile_id

        # @return [HashEntity] Данные редактируемого пользователя. Данные представлены в виде "ключ-значение".
        #   / Ключи данных зависят от типа редактируемого пользователя (client или organization).
        #   / User profile information in the list of key-value pairs. The list of supported keys depends on ProfileType.
        property :profile
      end
    end
  end
end
