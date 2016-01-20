ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # TODO: determine if fixtures are even useful
  # fixtures :all
  include FactoryGirl::Syntax::Methods

  URL_BASE = "api/v1/"
  # Add more helper methods to be used by all tests here...
  
  #used in testing the routes (tests found in controllers/routes)
end
