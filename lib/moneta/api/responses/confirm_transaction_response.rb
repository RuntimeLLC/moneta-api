module Moneta
  module Api
    module Responses
      # Запрос на завершение (подтверждение) операции.
      # Transaction confirmation request.

      class ConfirmTransactionResponse < Types::OperationInfo
        include ResponsePropertyMapper
      end
    end
  end
end
