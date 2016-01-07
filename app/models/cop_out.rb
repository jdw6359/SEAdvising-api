class CopOut < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def added_message
		"An application for a change of program into #{self.new_plan} " \
		"has been completed, taking effect term of: #{self.effective_term}"
	end
end