source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.21.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
#Font awesome
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

#Use Unicorn as the app server
gem 'unicorn'

# SOAP client
gem 'savon'
# Authorization
gem 'cancancan'

gem 'rails-i18n'
gem 'responders'

gem 'rspec'

gem 'will_paginate', '~> 3.1', '>= 3.1.6'

gem 'friendly_id'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :staging, :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'rspec-rails'
  gem 'warden'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'coveralls', require: false
  gem 'email_spec'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'pry-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'capistrano',          require: false
  gem 'capistrano-rails',    require: false
  gem 'capistrano-bundler',  require: false
  gem 'rvm1-capistrano3',    require: false
end
