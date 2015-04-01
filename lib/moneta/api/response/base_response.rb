module Moneta
  module Api
    module Response
      class BaseResponse
        def self.attributes(*arr)
          attr_accessor *arr

          send(:define_method, :attributes) { arr }
        end

        def initialize(params)
          load_from(params[:account])
        end

        private

        def load_from(params)
          attributes.each { |attr| send("#{ attr }=", params[ attr ]) }
        end
      end
    end
  end
end