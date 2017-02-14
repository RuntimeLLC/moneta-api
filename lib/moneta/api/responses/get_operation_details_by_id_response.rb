module Moneta
  module Api
    module Responses
      # Ответ на запрос получения информации по операции.
      # Transaction information response.

      class GetOperationDetailsByIdResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [Moneta::Api::Types::OperationInfo]
        property :operation, type: Types::OperationInfo
      end
    end
  end
end
