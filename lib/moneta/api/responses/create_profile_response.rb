module Moneta
  module Api
    module Responses
      class CreateProfileResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [String] Идентификатор профайла в системе МОНЕТА.РУ
        #   Profile id
        property :profile_id

        def fill(response)
          @profile_id = response
          self
        end
      end
    end
  end
end
