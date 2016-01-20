require 'test_helper'

class TransactionRoutesTest < ActionController::TestCase

	context 'transaction routes' do
		should 'route to all transactions' do
			assert_routing({method: 'get', path: URL_BASE + 'transactions'},
				{controller: URL_BASE + 'transactions', action: 'index'})
		end
	end
end