module Moneta
  module Api
    class RuntimeException < Exception
      attr_reader :code, :detail

      def initialize(code, message, detail)
        super(message)

        @code = code
        @detail = detail
      end

      def inspect
        error = [ "#{ @code }: #{ message }" ]
        error += detail.collect { |key, value| "#{ key }: #{ Array(value).join($/) }" }
        error.join($/)
      end

      def to_hash
        {
          code: code,
          message: message,
          detail: detail
        }
      end
    end
  end
end
