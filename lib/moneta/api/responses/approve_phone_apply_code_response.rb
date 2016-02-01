module Moneta
  module Api
    module Responses
      # Ответ, который приходит на запрос ApprovePhoneApplyCodeRequest. В ответе нет никаких данных.
      # Если в процессе подтверждения сотового телефона произошла ошибка, то возникнет Exception.
      # Если Exception не возник - значит сотовый телефон гарантированно подтвержден.

      class ApprovePhoneApplyCodeResponse; end
    end
  end
end
