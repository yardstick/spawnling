# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spawnling"
  s.version = "2.1.1.1"
  s.required_rubygems_version = ">= 1.3.6"

  s.authors = ['Tom Anderson']
  s.email   = ['tom@squeat.com']
  s.date = '2010-08-08'

  s.homepage = %q{http://github.com/tra/spawnling}
  s.summary = %q{Easily fork OR thread long-running sections of code in Ruby}
  s.description = %q{This plugin provides a 'Spawnling' class to easily fork OR
thread long-running sections of code so that your application can return
results to your users more quickly.  This plugin works by creating new database
connections in ActiveRecord::Base for the spawned block.

The plugin also patches ActiveRecord::Base to handle some known bugs when using
threads (see lib/patches.rb).}

  exclude_folders = 'spec/rails/{doc,lib,log,nbproject,tmp,vendor,test}'
  exclude_files = Dir['**/*.log'] + Dir[exclude_folders+'/**/*'] + Dir[exclude_folders]
  s.files = Dir['{examples,lib,tasks,spec}/**/*'] +
    %w(CHANGELOG LICENSE README.md init.rb) -
    exclude_files
  s.require_paths = ["lib"]
end
