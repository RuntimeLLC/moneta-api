module Moneta
  module Api
    module Responses
      class BaseResponse
        def self.attributes(*arr)
          attr_reader *arr

          send(:define_method, :attributes) { arr }
        end

        private

        def load_from(response)
          attributes.each { |attr| instance_variable_set("@#{ attr }", response[ attr ]) }
        end
      end
    end
  end
end
