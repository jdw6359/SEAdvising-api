require 'test_helper'

class PostRoutesHelper < ActionController::TestCase

	context 'post routes' do

		should 'route to all posts' do
			assert_routing({method: 'get', path: URL_BASE + 'posts'},
				{controller: URL_BASE + 'posts', action: 'index'})
		end

		should 'route to create a post' do
			assert_routing({method: 'post', path: URL_BASE + 'posts'},
				{controller: URL_BASE + 'posts', action: 'create'})
		end
	end
end