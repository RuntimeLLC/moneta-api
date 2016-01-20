module Moneta
  module Api
    class HTTPException < Exception
      attr_reader :code

      def initialize(code, message)
        super(message)

        @code = code
      end


      def inspect
        "#{ @code }: #{ message }"
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
