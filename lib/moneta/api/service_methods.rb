module Moneta
  module Api
    module ServiceMethods
      # TODO define for documentation but pretty code for myself ;)
      def find_account_by_id(id)
        response = client.call(__method__, { message: id })
        ResponseFactory.build(response)
      end

      def create_account(request)
        response = client.call(__method__, { message: request.to_h })
        ResponseFactory.build(response)
      end
    end
  end
end