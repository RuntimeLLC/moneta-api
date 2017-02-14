module Moneta
  module Api
    module Responses
      class EditProfileResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [Boolean] Статус операции, всегда true
        #   / Operation status. Always is true.
        property :success, read_only: true

        def fill(_)
          @success = true
          self
        end
      end
    end
  end
end
