require 'test_helper'

class AdvisorRoutesTest < ActionController::TestCase

	context 'advisor routes' do
		should 'route to all advisors' do
			assert_routing({method: 'get', path: URL_BASE + 'advisors'},
				{controller: URL_BASE + 'advisors', action: 'index'})
		end
	end
end