require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

	context 'transactions' do
		should belong_to(:student)
		should belong_to(:loggable)
	end
end