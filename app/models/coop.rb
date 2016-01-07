class Coop < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def added_message
		"A Co-op was added at #{self.company_name}"
	end
end