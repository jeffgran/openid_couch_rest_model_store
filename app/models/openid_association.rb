class OpenidAssociation < CouchRest::Model::Base
  property    :issued_at, Time
  property    :lifetime, Integer
  property    :assoc_type, String
  property    :handle, String
  property    :secret, TrueClass
  property    :target, String
  property    :server_url, String
  timestamps!

  design do
    view :by_target
  end

  save_design_doc!

end
