source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'bourbon'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use devise for Auth
gem "devise"

# Kaminari for paging
gem "kaminari"

# DRY ressources (used for admin)
gem 'inherited_resources'

# Sorted for sorting
gem 'sorted'

# Deploy with Capistrano
gem 'capistrano'
gem 'capistrano-ext'

gem 'simple_form'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

group :development do
  gem 'sextant'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'awesome_print'
  gem 'debugger'
end

group :test do
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'spork', '~> 1.0rc'
  gem 'rb-fsevent'
  gem 'capybara'
  gem 'factory_girl_rails'
  # Use database_cleaner if you'd like to run full webkit specs
  # gem 'database_cleaner'
  # gem 'capybara-webkit', '0.7.2'
end

group :production do
  # Use unicorn as the app server
  gem 'unicorn'
end

