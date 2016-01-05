class CopOut < ActiveRecord::Base
	include Loggable

	belongs_to :student

	def message
		"#{self.student.full_name} has applied for a change of program out, " \
		"desiring acceptance into #{self.new_plan}, effective starting " \
		"term: #{self.effective_term}"
	end
end