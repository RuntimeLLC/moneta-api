module Moneta
  module Api
    module Responses
      class CreateAccountResponse < BaseResponse
        attributes :id

        def initialize(response)
          @id = response
        end
      end
    end
  end
end