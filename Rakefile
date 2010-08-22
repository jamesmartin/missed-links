require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

desc "run all specs"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/*.rb']
  t.spec_opts = ['--format', 'nested', '--color']
end

desc "run all specs with RCov"
Spec::Rake::SpecTask.new('spec_with_rcov') do |t|
  t.spec_files = FileList['spec/*.rb']
  t.spec_opts = ['--format', 'nested', '--color']
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']
end

namespace :cucumber do
  Cucumber::Rake::Task.new(:default) do |t|
    t.cucumber_opts = "features --format pretty"
  end
end

desc "End to end acceptance tests"
task :default => ['cucumber:default']
