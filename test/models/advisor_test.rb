require 'test_helper'

class AdvisorTest < ActiveSupport::TestCase

	context 'advisor' do
		setup do
			@advisor = build(:advisor)
		end

		should 'inherit from user' do
			assert_kind_of(User, @advisor)
		end
	end
end