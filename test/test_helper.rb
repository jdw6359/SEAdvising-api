ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # TODO: determine if fixtures are even useful
  # fixtures :all
  include FactoryGirl::Syntax::Methods

  URL_BASE = "api/v1/"
  

  def bypass_authentication(user, controller)
	  controller
		  .stubs(:authenticate_request)
		  .returns(:true)
	  controller
		  .stubs(:decoded_auth_token)
		  .returns({user_id: user.id})
  end
  #used in testing the routes (tests found in controllers/routes)
end