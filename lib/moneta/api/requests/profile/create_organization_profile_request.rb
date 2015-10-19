module Moneta
  module Api
    module Requests
      module Profile
        # Запрос на создание пользователя с типом "организация" в системе МОНЕТА.РУ.
        # Request for creating a MONETA.RU organization account.
        class CreateOrganizationProfileRequest < CreateProfileRequest

          # @return [String] Тип пользователя. Возможные значения: [client, organization]
          #   / Profile type. Valid values are: [client, organization]
          property :profile_type, read_only: true

          # @return [Moneta::Api::Types::Profile::Organization] Данные создаваемого пользователя. Данные представлены в виде "ключ-значение".
          #   / Ключи данных зависят от типа пользователя (ProfileType).
          #   / User profile information in the list of key-value pairs.
          #   / The list of supported keys depends on ProfileType.
          property :profile, type: Moneta::Api::Types::Profile::Organization

          def initialize
            @profile_type = 'organization'
          end
        end
      end
    end
  end
end
