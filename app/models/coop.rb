class Coop < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def message
		"A Co-op was added for #{self.student.full_name} at " \
		"#{self.company_name}"
	end
end