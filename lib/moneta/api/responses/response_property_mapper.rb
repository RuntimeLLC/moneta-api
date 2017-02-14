module Moneta
  module Api
    module Responses
      module ResponsePropertyMapper
        private

        def data_property_name(property)
          property.to_s.camelize_with_lower
        end
      end
    end
  end
end
