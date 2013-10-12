ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/setup'
require 'factory_girl_rails'
require 'database_cleaner'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  include FactoryGirl::Syntax::Methods
  DatabaseCleaner.strategy = :truncation

  def setup
    DatabaseCleaner.clean
  end
end
