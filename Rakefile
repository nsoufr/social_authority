require 'rake/testtask'

desc 'Default: run unit tests.'
task default: :test

desc 'Test the social_authority plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc "Run tests"
task :default => :test
