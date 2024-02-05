source "https://rubygems.org"


ruby "3.2.1"
gem "rails", "~> 7.1.0"
gem 'bcrypt'
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem 'turbo-rails'
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false
gem "sassc-rails"
gem 'bootstrap-sass', '3.3.6'
gem 'jquery-rails'
gem 'will_paginate', '~> 3.3' # この行を追加してください。
gem 'bootstrap-will_paginate', '1.0.0' # この行を追加してください。
gem 'rails-i18n'



group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end


group :development do
  gem "web-console"
end


group :test do
 gem 'capybara', '>= 3.26'
 gem 'selenium-webdriver'
 gem 'webdrivers'  #今回追加したGem
 gem 'rails-flog', require: 'flog' #今回追加したGem
 gem 'rspec-rails' #今回追加したGem
 gem "factory_bot_rails" #今回追加したGem
 gem 'faker' #今回追加したGem
 gem 'database_cleaner' #今回追加したGem
 gem 'rails-controller-testing' #今回追加したGem
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]