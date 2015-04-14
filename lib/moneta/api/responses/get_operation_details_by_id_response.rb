module Moneta
  module Api
    module Responses
      # Ответ на запрос получения информации по операции.
      # Transaction information response.

      class GetOperationDetailsByIdResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::OperationInfo]
        property :operation, Types::OperationInfo
      end
    end
  end
end