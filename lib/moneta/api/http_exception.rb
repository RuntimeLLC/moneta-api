module Moneta
  module Api
    class HTTPException < Exception
      attr_accessor :code

      def inspect
        "#{ code }: #{ message }"
      end

      def to_hash
        {
          code: code,
          message: message,
        }
      end
    end
  end
end
