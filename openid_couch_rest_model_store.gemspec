Gem::Specification.new do |s|
  s.name = %q{openid_couch_rest_model_store}
  s.version = "1.0.2"
  s.authors = ['James Tucker', 'Kazuyoshi Tlacaelel', 'Jeff Gran']
  s.email = 'info@wildfireapp.com'
  s.homepage = 'http://github.com/jeffgran/openid_couch_rest_model_store'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2012-03-20}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.3}
  s.summary = 'A CouchRestModel store for OpenID'
  s.description = 'A CouchRestModel store for OpenID, forked from a very similar ActiveRecord store written by James Tucker and Kazuyoshi Tlacaelel'

  s.files = `git ls-files`.split - %W[.gitignore #{File.basename __FILE__}]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency("rails", ["~> 3"])
      s.add_runtime_dependency("ruby-openid")
      s.add_runtime_dependency("couchrest_model", ["~> 1.0"])
    else
      s.add_dependency("rails", ["~> 3"])
      s.add_dependency("ruby-openid")
      s.add_dependency("couchrest_model", ["~> 1.0"])
    end
  else
    s.add_dependency("rails", ["~> 3"])
    s.add_dependency("ruby-openid")   
    s.add_dependency("couchrest_model", ["~> 1.0"])
  end
end
