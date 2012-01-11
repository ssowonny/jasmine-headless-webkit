source :rubygems

# Specify your gem's dependencies in jasmine-headless-webkit.gemspec
gemspec

gem 'rspec'
gem 'fakefs', :require => nil
gem 'guard'

gem 'guard-rspec'
gem 'guard-shell'
gem 'guard-coffeescript'
gem 'guard-cucumber'

require 'rbconfig'
case RbConfig::CONFIG['host_os']
when /darwin/
  gem 'growl'
  gem 'rb-fsevent'
when /linux/
  gem 'libnotify'
end

gem 'growl'
gem 'rake', '0.8.7'
gem 'mocha', '0.9.12'
gem 'guard-jasmine-headless-webkit', :git => 'git://github.com/johnbintz/guard-jasmine-headless-webkit.git'
gem 'facter'

gem 'cucumber'

gem 'jquery-rails'
gem 'ejs'

gem 'simplecov'
gem 'execjs'
