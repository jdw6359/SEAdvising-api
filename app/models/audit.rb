class Audit < ActiveRecord::Base
	include Loggable

	belongs_to :student
	belongs_to :advisor

	def added_message
		"An audit was recorded on #{self.date_performed} with " \
		"the following comments: #{self.comment}"
	end
end