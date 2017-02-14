module Moneta
  module Api
    module Responses
      # Ответ на запрос проверки проведения операции в системе МОНЕТА.РУ
      # Transaction verification response.

      class VerifyTransferResponse < Types::VerifyTransferResponseType
        include ResponsePropertyMapper
      end
    end
  end
end
