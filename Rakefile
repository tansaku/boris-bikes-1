require 'rubocop/rake_task'
require 'rspec/core/rake_task'
require 'reek/rake/task'

Reek::Rake::Task.new(:reek)
RuboCop::RakeTask.new(:cop)
RSpec::Core::RakeTask.new(:spec)

task default: [:reek, :cop, :spec]
