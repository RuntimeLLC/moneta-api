module Moneta
  module Api
    module Requests
      # Запрос на создание пользователя в системе МОНЕТА.РУ.
      # Request for creating a MONETA.RU account.
      class CreateProfileRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID родительского пользователя в системе МОНЕТА.РУ, к которому будет принадлежать создаваемый пользователь.
        #   \ Если поле не задано, то пользователь будет принадлежать тому пользователю, от имени которого работает web service.
        #   \ Unique identifier of the parent MONETA.RU account that will own the new account.
        #   \ If you ommit this element, the new account will belong to the the user who sends this request.
        property :unit_id

        property :profile_id

        # @return [String] Тип пользователя. Возможные значения: [client, organization]
        #   \ Profile type. Valid values are: [client, organization]
        property :profile_type

        # @return [String] Данные создаваемого пользователя. Данные представлены в виде "ключ-значение".
        #   \ Ключи данных зависят от типа пользователя (ProfileType).
        #   \ User profile information in the list of key-value pairs.
        #   \ The list of supported keys depends on ProfileType.
        property :profile
      end
    end
  end
end
