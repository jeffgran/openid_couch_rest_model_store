require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the plugin.'
Rake::TestTask.new(:test) do |t|
  t.ruby_opts << '-rubygems'
  t.libs += %w[test]
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
  t.warning = true
end

desc "build gem"
task :gem do
  sh "gem build openid_couch_rest_model_store.gemspec"
end
