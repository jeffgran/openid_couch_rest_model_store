require 'test/unit'
require 'active_support'
require 'couchrest_model'
require 'openid/store/couch_rest_model'
require 'openid/store/nonce'

# CouchRest::Model::Base.configure do |conf|
#   conf.connection[:name] = 'openidcouchrestmodelstoretest'
# end

Dir['app/models/*.rb'].each do |model|
  require File.expand_path(model)
end
