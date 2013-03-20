require 'bundler/gem_tasks'

require 'rspec/core/rake_task'

desc 'Run all tests'
RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
end
