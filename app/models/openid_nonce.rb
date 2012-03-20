class OpenidNonce < CouchRest::Model::Base
  property  :timestamp, Integer
  property  :salt, String
  property  :target, String
  property  :server_url, String
  timestamps!

  design do 
    view :by_target
  end

  save_design_doc!

  def self.exists_by_target?(timestamp, salt, target)
    by_target(key: target).any?{|nonce| nonce.timestamp == timestamp}
  end

end
