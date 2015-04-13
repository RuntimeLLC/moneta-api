module Moneta
  module Api
    module Requests
      # Запрос на получение списка операций по заданному фильтру.
      # Обязательными в фильтре являются только поля с датами периода.
      # Все остальные поля в фильтре необязательные.
      # Если данные не найдены, то size в ответе равен 0.
      # Transaction searching by given filter.
      # Filter requires date period values to be set.
      # Other parameters are optional.
      # Response element "size" is 0 if no data found.

      class FindOperationsListRequest
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::Pager] Настройки страницы данных. Необязательное поле.
        #   / Paging settings. Optional.
        property :pager

        # @return [Moneta::Api::Types::FindOperationsListRequestFilter] Фильтр, по которому ищем операции.
        #   / Transactions filter.
        property :filter
      end
    end
  end
end
