module Moneta
  module Api
    module Responses
      class FindAccountByIdResponse < BaseResponse
        attributes :id, :currency, :type, :status

        def initialize(response)
          load_from(response[:account])
        end
      end
    end
  end
end
