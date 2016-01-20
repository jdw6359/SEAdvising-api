require 'test_helper'

class AuthTokenTest < ActiveSupport::TestCase
	context 'auth token' do
		context '#encode' do
			should 'delegate #encode to JWT' do
				user = create(:user)
				payload = {user_id: user.id}
				JWT.expects(:encode)
				AuthToken.encode(payload)
			end
		end

		context '#decode' do
			should 'delegate #decode to JWT' do
				token = mock()
				JWT.expects(:decode)
				AuthToken.decode(token)
			end
		end
	end

	context 'decoded auth token' do
		context '#expired' do
			should 'detect an expired token' do
				flunk 'fix this test'
			end
		end
	end
end