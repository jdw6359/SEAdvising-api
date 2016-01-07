class CopOut < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def added_message
		"An application for a change of program into #{self.new_plan} " \
		"has been completed, taking effect term of: #{self.effective_term}"
	end

	def updated_message
		"FIX ME: A Change of program record has been updated"
	end

	def removed_message
		"FIX ME: A Change of program record has been removed"
	end
end