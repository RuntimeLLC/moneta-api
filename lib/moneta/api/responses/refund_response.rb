module Moneta
  module Api
    module Responses
      # Ответ по запросу возврата средств, содержащий информацию по возвратной операции.
      # Response containing refund transaction information.

      class RefundResponse < Types::OperationInfo
        include ResponsePropertyMapper
      end
    end
  end
end
