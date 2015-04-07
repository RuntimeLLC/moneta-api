module Moneta
  module Api
    class ResponseFactory
      TYPES_MAP = {
        'tns:AccountInfo'       => Moneta::Api::Types::AccountInfo,
        'tns:AccountAccessInfo' => Moneta::Api::Types::AccountAccessInfo
      }

      class << self
        # @param [Savon::Response]
        # @return [Moneta::Api::Responses]
        def build(response, wsdl)
          klass, data = response.to_hash.to_a.first
          klass = classify(klass)

          Object.const_get("Moneta::Api::Responses::#{ klass }").new(
            data.kind_of?(Hash) ?
              map(wsdl.search("//xsd:element[@name='#{ klass }']"), data) :
              data
          )
        end

        private

        def classify(str)
          str.to_s.split('_').map(&:capitalize).join
        end

        def map(parent_node, data)
          data.keys.count == 1 ?
            build_element(parent_node, *data.to_a.first) :
            data.map { |key, value| build_element(parent_node, key, value) }.reduce(Hash.new, :merge)
        end

        def build_element(node, key, value)
          child_node = node.search("[@name='#{ key }']")
          type = child_node.any? && child_node.attribute('type').value

          if value.kind_of?(Hash)
            if TYPES_MAP.has_key?(type)
              { key => TYPES_MAP[ type ].new(map(child_node, value)) }
            else
              Proc.new { raise 'error' }
            end
          else
            { key => value}
          end
        end
      end
    end
  end
end
