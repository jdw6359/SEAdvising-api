require 'test_helper'

class PostRoutesHelper < ActionController::TestCase

	context 'post routes' do

		should 'route to all posts' do
			assert_routing({method: 'get', path: url_base + 'posts'},
				{controller: url_base + 'posts', action: 'index'})
		end

		should 'route to create a post' do
			assert_routing({method: 'post', path: url_base + 'posts'},
				{controller: url_base + 'posts', action: 'create'})
		end
	end
end