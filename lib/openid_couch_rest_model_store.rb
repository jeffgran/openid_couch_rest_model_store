require 'rails/engine'
require 'openid/store/couch_rest_model'

module OpenidCouchRestModelStore
  class Engine < Rails::Engine
    config.eager_load_paths << File.expand_path("../../app/models", __FILE__)
  end
  class Railtie < Rails::Railtie
    # nothin'
  end
end
