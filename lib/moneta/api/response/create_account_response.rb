module Moneta
  module Api
    module Response
      class CreateAccountResponse < BaseResponse
        attributes :id

        def initialize(response)
          @id = response
        end
      end
    end
  end
end