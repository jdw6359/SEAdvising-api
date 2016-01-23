require 'test_helper'

class SeniorProjectTest < ActiveSupport::TestCase

	context 'senior project' do

		should belong_to (:student)
	end
end