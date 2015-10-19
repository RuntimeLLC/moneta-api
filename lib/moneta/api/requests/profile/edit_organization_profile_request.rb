module Moneta
  module Api
    module Requests
      module Profile
        # Запрос на редактирование пользователя с типом "организация" в системе МОНЕТА.РУ.
        # Request for editing a MONETA.RU organization account.
        class EditOrganizationProfileRequest < EditProfileRequest

          # @return [Moneta::Api::Types::Profile::Organization] Данные редактируемого пользователя. Данные представлены в виде "ключ-значение".
          #   / User profile information in the list of key-value pairs.
          property :profile, type: Moneta::Api::Types::Profile::Organization
        end
      end
    end
  end
end
