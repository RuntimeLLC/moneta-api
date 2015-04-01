module Moneta
  module Api
    module Responses
      class BaseResponse
        def self.attributes(*arr)
          attr_accessor *arr

          send(:define_method, :attributes) { arr }
        end

        private

        def load_from(response)
          attributes.each { |attr| send("#{ attr }=", response[ attr ]) }
        end
      end
    end
  end
end