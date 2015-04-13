module Moneta
  module Api
    module Requests
      # Запрос на получение списка последних операций.
      # Если данные не найдены, то size в ответе равен 0.
      # Last transactions searching.
      # Response element "size" is 0 if no data found.

      class FindLastOperationsListRequest
        include Moneta::Api::DataMapper
        
        # @return [Integer] ID пользователя в системе МОНЕТА.РУ.
        #   Если это поле не задано, то используется текущий пользователь.
        #   Необязательное поле.
        #   / Structure identificator in MONETA.RU. If omitted authenticated user's structure is used. Optional.
        property :unit_id

        # @return [Integer] Количество операций. Необязательное поле.
        #   / Transactions quantity. Optional.
        property :transactions_quantity
      end
    end
  end
end
