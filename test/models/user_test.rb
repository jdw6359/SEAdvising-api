require 'test_helper'

class UserTest < ActiveSupport::TestCase

	should have_many(:messages)

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
		
		should 'generate a password reset token' do
			assert_nil(@user.password_reset_token)
			@user.generate_password_reset_token!
			assert_not_nil(@user.password_reset_token)
		end
	end
end