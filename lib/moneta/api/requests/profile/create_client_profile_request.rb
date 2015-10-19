module Moneta
  module Api
    module Requests
      module Profile
        # Запрос на создание пользователя с типом "клиент" в системе МОНЕТА.РУ.
        # Request for creating a MONETA.RU client account.
        class CreateClientProfileRequest < CreateProfileRequest

          # @return [String] Тип пользователя. Возможные значения: [client, organization]
          #   / Profile type. Valid values are: [client, organization]
          property :profile_type, read_only: true

          # @return [Moneta::Api::Types::Profile::Client] Данные создаваемого пользователя. Данные представлены в виде "ключ-значение".
          #   / Ключи данных зависят от типа пользователя (ProfileType).
          #   / User profile information in the list of key-value pairs.
          #   / The list of supported keys depends on ProfileType.
          property :profile, type: Moneta::Api::Types::Profile::Client

          def initialize
            @profile_type = 'client'
          end
        end
      end
    end
  end
end
