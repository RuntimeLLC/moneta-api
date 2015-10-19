module Moneta
  module Api
    module Requests

      # Запрос на получение банковских реквизитов по ID пользователя. Если данные не найдены, возвращается пустой список.
      # Request for bank account details by a user ID. MONETA.RU returns an empty list if it cannot find bank account details.
      class FindBankAccountsRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ. Если это поле не задано, то используется текущий пользователь.
        #   User ID. If you omit this element, MONETA.RU uses the ID of the user who sends the request.
        property :unit_id
      end
    end
  end
end
