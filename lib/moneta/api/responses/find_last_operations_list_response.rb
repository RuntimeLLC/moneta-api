module Moneta
  module Api
    module Responses
      # Ответ на запрос FindLastOperationsListRequest.
      # В результате возвращается список последних операций.
      # Transaction searching response.
      # Result contains last transactions list.

      class FindLastOperationsListResponse < Moneta::Api::Types::OperationInfoList
        include ResponsePropertyMapper
      end
    end
  end
end
