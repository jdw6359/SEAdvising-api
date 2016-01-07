class Audit < ActiveRecord::Base
	include Loggable

	belongs_to :student
	belongs_to :advisor

	def added_message
		"An audit was recorded on #{self.date_performed} with " \
		"the following comments: #{self.comment}"
	end

	def updated_message
		"FIX ME: An audit was updated"
	end

	def removed_message
		"FIX ME: An audit was removed"
	end
end