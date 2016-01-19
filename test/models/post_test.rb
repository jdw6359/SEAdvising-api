require 'test_helper'

class PostTest < ActiveSupport::TestCase

	context 'post' do

		setup do
			@post = build(:post)
		end

		should belong_to(:user) 

		should 'not save without a message' do
			@post.message = nil
			assert_not @post.save, "Post saved with nil message"
		end

		should 'not save without being associated with a user' do
			@post.user = nil
			assert_not @post.save, "Post saved without belonging to a user"
		end
	end
end