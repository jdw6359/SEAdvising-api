require 'test_helper'

class AuthTokenTest < ActiveSupport::TestCase
	context 'auth token' do
		context '#encode' do
			should 'encode payload into token' do
				flunk 'fix this test'
			end
		end

		context '#decode' do
			should 'decode token into payload' do
				flunk 'fix this test'
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