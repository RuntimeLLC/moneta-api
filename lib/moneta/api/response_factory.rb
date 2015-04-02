module Moneta
  module Api
    class ResponseFactory
      RESPONSE_MAP = {
        find_account_by_id_response: Moneta::Api::Responses::FindAccountByIdResponse,
        create_account_response:     Moneta::Api::Responses::CreateAccountResponse,
        account:                     Moneta::Api::Responses::AccountInfo
      }

      class << self
        def build(response)
          _, response = map(response.to_hash).to_a.first

          response
        end

        private

        def map(hash)
          if hash.keys.count == 1
            build_node(*hash.to_a.first)
          else
            hash.map { |key, value| build_node(key, value) }.reduce(Hash.new, :merge)
          end
        end

        # TODO need description
        def build_node(key, value)
          if value.kind_of? Hash
            if RESPONSE_MAP.has_key?(key)
              { key => RESPONSE_MAP[ key ].new(map(value)) }
            else
              raise '#TODO '
            end
          else
            if RESPONSE_MAP.has_key?(key)
              { key => RESPONSE_MAP[ key ].new(value) }
            else
              { key => value }
            end
          end
        end
      end
    end
  end
end
