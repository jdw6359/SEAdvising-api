require 'test_helper'

class Api::V1::PostsControllerTest < ActionController::TestCase

	context 'posts controller' do
		
		setup do
			bypass_authentication(@controller)
		end

		should 'get the index' do
			get :index
			assert_response :success
			assert_not_nil assigns(:posts)
		end

		should 'create a post' do
			assert_difference('Post.count', 1) do
				post :create, post: {message: 'test'}
			end
			assert_response :success
		end

	end
end