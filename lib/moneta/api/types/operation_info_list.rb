module Moneta
  module Api
    module Types
      # Тип, представляющий список операций.
      # Содержит разбиение по страницам для отображения длинных списков.
      # Transaction list type.
      # Contains paged structure for long list presentation.

      class OperationInfoList
        include Moneta::Api::DataMapper

        # @return [Integer] Количество операций, возвращаемых в результате запроса.
        #   / Transaction per page within one request.
        property :page_size

        # @return [Integer] Номер текущей страницы. Нумерация начинается с 1
        #   / Current page number starting with 1.
        property :page_number

        # @return [Integer] Максимальное количество страниц с операциями по данному запросу
        #   / Total page count for given request.
        property :pages_count

        # @return [Integer] Количество операций на текущей странице.
        #   Меньше или равно pageSize.
        #   Последняя страница может содержать операций меньше, чем pageSize.
        #   / Transactions count in current page. Less or equal to pageSize. Last page may contain less than pageSize transactions.
        property :size

        # @return [Integer] Общее количество операций, которое можно получить в данной
        #   выборке
        #   / Total transactions count for given request.
        property :total_size

        # @return [Array[MonetaOperationInfo]] Список операций
        #   / Transaction list
        property :operation, type: Moneta::Api::Types::OperationInfo
      end
    end
  end
end
