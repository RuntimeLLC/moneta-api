module Moneta
  module Api
    module Response
      class FindAccountByIdResponse < BaseResponse
        attributes :id, :currency, :type, :status
      end
    end
  end
end