require 'test_helper'

class UserTest < ActiveSupport::TestCase

	should have_many(:posts)

	should validate_presence_of(:first_name)
	should validate_presence_of(:last_name)
	should validate_presence_of(:email)
	should validate_presence_of(:password)

	should validate_uniqueness_of(:email)

	should have_secure_password

	context 'user' do
		setup do
			@user = build(:user)
		end
		
		should 'not have a password reset token when created' do
			assert_nil(@user.password_reset_token)
		end

		context '#generate_password_reset_token!' do
			should 'update the user\'s password_reset_token' do
				@user.generate_password_reset_token!
				assert_not_nil(@user.password_reset_token)
			end
		end

		context '#generate_auth_token' do
			should 'invoke #encode on AuthToken' do
				AuthToken.expects(:encode).with({user_id: @user.id})
				@user.generate_auth_token
			end
		end
	end
end