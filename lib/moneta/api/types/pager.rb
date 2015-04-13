module Moneta
  module Api
    module Types
      # Тип, позволяющий задать необходимую страницу при отображении длинных списков.
      # Long list retrieval type.

      class Pager
        include Moneta::Api::DataMapper

        # @return [Int] Номер страницы, которую нужно получить. Минимальное значение равно 1.
        #   Значение по умолчанию равно 1.
        #   / Page number to retrieve. Minimal value is 1. By default is 1.
        property :page_number

        # @return [Int] Сколько записей необходимо получить на одной странице. Минимальное
        #   значение равно 1. Максимальное значение равно 100. Значение по умолчанию равно 10.
        #   / Transactions per page. Minimal value is 1. Maximal value is 100. By default is 10.
        property :page_size
      end
    end
  end
end