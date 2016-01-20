require 'test_helper'

class PasswordResetRoutesTest < ActionController::TestCase

	context 'password reset routes' do
		should 'route to create a password reset' do
			assert_routing({method: 'post', path: URL_BASE + 'password_resets'},
				{controller: URL_BASE + 'password_resets', action: 'create'})
		end

		should 'route to show a password reset' do
			password_reset_token = SecureRandom.urlsafe_base64(48)
			assert_routing({method: 'get', 
				path: URL_BASE + 'password_resets/' + password_reset_token},
				{controller: URL_BASE + 'password_resets', action: 'show',
				id: password_reset_token})
		end

		# both PUT and PATCH methods route to password_resets#update
		should 'route to update a password reset' do
			password_reset_token = SecureRandom.urlsafe_base64(48)
			assert_routing({method: 'put', 
				path: URL_BASE + 'password_resets/' + password_reset_token},
				{controller: URL_BASE + 'password_resets', action: 'update',
				id: password_reset_token})
		end
	end
end