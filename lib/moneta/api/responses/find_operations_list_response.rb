module Moneta
  module Api
    module Responses
      # Ответ на запрос FindOperationsListRequest.
      # В результате возвращается список операций, разбитый по страницам.
      # Transaction searching response.
      # Result contains paged transactions list.

      class FindOperationsListResponse < Types::OperationInfoList; end
    end
  end
end
