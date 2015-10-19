module Moneta
  module Api
    module Requests
      # Запрос на получение данных пользователя по ID пользователя.
      # Если данные не найдены, возникает Exception.
      # Request for profile information by a MONETA.RU user ID.
      # If MONETA.RU finds no information about the specified user, an error occurs.
      class GetProfileInfoRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ.
        #    Если это поле не задано, то используется текущий пользователь.
        #    MONETA.RU user ID.
        #    If you omit this element, MONETA.RU uses the ID of the user who sends this request.
        property :unit_id
      end
    end
  end
end
