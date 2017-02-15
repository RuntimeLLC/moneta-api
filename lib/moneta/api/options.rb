module Moneta
  module Api
    class Options
      def initialize(params)
        @params = params
      end

      def demo?
        @params[:demo_mode]
      end

      def logger
        @params[:logger]
      end

      def log_bodies?
        @params[:log_body]
      end

      def filter
        Array(@params[:filter])
      end

      def open_timeout
        @params[:open_timeout] || 100
      end
    end
  end
end
