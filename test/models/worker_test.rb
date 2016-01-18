require 'test_helper'

class WorkerTest < ActiveSupport::TestCase

	context 'worker' do
		setup do
			@worker = build(:worker)
		end

		should 'inherit from user' do
			assert_kind_of(User, @worker)
		end
	end
end