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
            map(wsdl.search("//xsd:element[@name='#{ klass }']"), data)
          )
        end

        private

        def classify(str)
          str.to_s.split('_').map(&:capitalize).join
        end

        def map(parent_node, data)
          if data.kind_of?(Hash)
            data.keys.count == 1 ?
              build_element(parent_node, *data.to_a.first) :
              data.map { |key, value| build_element(parent_node, key, value) }.reduce(Hash.new, :merge)
          else
            data
          end
        end

        def build_element(node, key, value)
          if value.kind_of?(Hash)
            build_node(node, key, value, Proc.new { |child_node| map(child_node, value) }, Proc.new { raise 'error' })
          else
            build_node(node, key, value, Proc.new { |child_node| child_node }, Proc.new { { key => value} })
          end
        end

        def build_node(node, key, value, block1, block2)
          child_node = node.search("[@name='#{ key }']")
          type = child_node.any? && child_node.attribute('type').value
          if TYPES_MAP.has_key?(type)
            { key => TYPES_MAP[ type ].new(block1.call(child_node, value)) }
          else
            block2.call
          end
        end
      end
    end
  end
end
