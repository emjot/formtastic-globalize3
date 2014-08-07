require 'bundler/setup'
require 'appraisal'
require 'rspec/core/rake_task'

require 'bundler/gem_tasks'
require 'wwtd/tasks'

desc 'Default: run the rspec examples'
task :default => [:spec]
#task :default => :all

task :local => "wwtd:local" # run all gemfiles with local ruby

desc 'Run tests with all supported Rails versions.'
task :all => ["appraisal:install"] do
  exec('rake appraisal spec')
end

desc 'Run all tests'
RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
end
