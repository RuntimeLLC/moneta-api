module Moneta
  module Api
    module Requests
      module Profile
        # Запрос на редактирование пользователя с типом "клиент" в системе МОНЕТА.РУ.
        # Request for editing a MONETA.RU client account.
        class EditClientProfileRequest < EditProfileRequest

          # @return [Moneta::Api::Types::Profile::Client] Данные редактируемого пользователя. Данные представлены в виде "ключ-значение".
          #   / User profile information in the list of key-value pairs.
          property :profile, type: Moneta::Api::Types::Profile::Client
        end
      end
    end
  end
end
