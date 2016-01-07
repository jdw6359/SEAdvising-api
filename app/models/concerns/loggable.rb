module Loggable
	extend ActiveSupport::Concern

	included do
		# when an entity is created, log_added_transaction
		after_create :log_added_transaction

		# before an entity is updated, log_updated_transaction
		before_update :log_updated_transaction

		# before an entity is deleted, log_removed_transaction
		before_destroy :log_removed_transaction

		has_many :transactions, as: :loggable
	end

	def log_added_transaction
		self.transactions.create(student_id: self.student.id, 
			message: self.added_message, action: "Added")
	end

	def log_updated_transaction
		self.transactions.create(student_id: self.student.id,
			message: self.updated_message, action: "Updated")
	end

	def log_removed_transaction
		puts "log removed transaction invoked"
		self.transactions.create(student_id: self.student.id,
			message: self.removed_message, action: "Removed")
	end
end