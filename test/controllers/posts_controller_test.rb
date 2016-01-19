require 'test_helper'

class Api::V1::PostsControllerTest < ActionController::TestCase

	context 'posts controller' do

		should 'get the index' do
			
			binding.pry

			@controller.stub(:set_current_user)
			@controller.stub(:authenticate_request)

			binding.pry

			get :index

		end
	end
end