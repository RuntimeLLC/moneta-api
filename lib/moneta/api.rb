require 'moneta/api/version'
require 'savon'

require 'moneta/api/service_methods'
require 'moneta/api/service'
require 'moneta/api/data_mapper'

require 'moneta/api/types/entity'
require 'moneta/api/types/key_value_attribute'
require 'moneta/api/types/operation_info'
require 'moneta/api/types/transaction_request_type'

%w(types responses requests).each do |folder|
  Dir["lib/moneta/api/#{ folder }/*.rb"].each do |file|
    require File.join(File.dirname(__FILE__), '../../', file)
  end
end

require 'moneta/api/response_factory'

