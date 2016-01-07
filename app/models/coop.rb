class Coop < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def added_message
		"A Co-op was added at #{self.company_name}"
	end

	def updated_message
		"FIX ME: A coop was updated"
	end

	def removed_message
		"FIX ME: A coop was removed"
	end
end