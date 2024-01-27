source "https://rubygems.org"


ruby "3.2.1"
gem "rails", "~> 7.1.0"
gem 'bcrypt'
gem 'faker'
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem 'turbo-rails'
gem 'bootstrap-sass', '3.3.6'
gem 'jquery-rails'
gem 'will_paginate', '~> 3.3' # この行を追加してください。
gem 'bootstrap-will_paginate', '1.0.0' # この行を追加してください。



group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end


group :development do
  gem "web-console"
end


group :test do
 gem 'capybara', '>= 3.26'
 gem 'selenium-webdriver'
 gem 'webdrivers'
 gem 'rails-flog', require: 'flog'
 gem 'rspec-rails'
 gem "factory_bot_rails"
 gem 'faker'
 gem 'database_cleaner'
 gem 'rails-controller-testing'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]