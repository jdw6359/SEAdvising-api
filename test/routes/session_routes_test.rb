require 'test_helper'

class SessionRoutesTest < ActionController::TestCase

	context 'session routes' do
		should 'route to create session' do
			assert_routing({method: 'post', path: URL_BASE + 'sessions'},
				{controller: URL_BASE + 'sessions', action: 'create'})
		end

		should 'route to destroy session' do
			session_id = "1"
			assert_routing({method: 'delete', path: URL_BASE + 'sessions/' + session_id},
				{controller: URL_BASE + 'sessions', action: 'destroy',
				id: session_id})
		end

		should 'route to restore session' do
			assert_routing({method: 'post', path: URL_BASE + 'sessions/restore'},
				{controller: URL_BASE + 'sessions', action: 'restore'})
		end
	end
end