class Audit < ActiveRecord::Base
	include Loggable

	belongs_to :student
	belongs_to :advisor

	def message
		"An audit was recorded on #{self.date_performed} for " \
		"#{self.student.full_name} with the following comments: " \
		"#{self.comment}"
	end
end