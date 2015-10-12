require 'moneta/api/version'
require 'savon'

require 'moneta/core_ext/string'
require 'moneta/api/service_methods'
require 'moneta/api/service'
require 'moneta/api/data_mapper'

%w(types responses requests).each do |folder|
  Dir["./lib/moneta/api/#{ folder }/*.rb"].each do |file|
    require File.join(File.dirname(__FILE__), '../../', file)
  end
end

require 'moneta/api/response_factory'

