ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factories'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # TODO: determine if fixtures are even useful
  # fixtures :all
  include FactoryGirl::Syntax::Methods


  # Add more helper methods to be used by all tests here...
end
