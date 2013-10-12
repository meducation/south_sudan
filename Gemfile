source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0'

gem 'thin'
gem 'devise'
gem 'turbolinks'
gem 'haml'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'sqlite3'
  gem 'zeus'
end

group :test do
  gem 'mocha', require: false
  gem 'factory_girl_rails', "~> 4.0"
end

group :production do
  gem 'pg'
end
