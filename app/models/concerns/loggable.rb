module Loggable
	extend ActiveSupport::Concern

	included do
		# when an entity is created, log_added_transaction
		after_commit :log_added_transaction

		# when an entity is updated, log_updated_transaction
		# TODO: callback, implement log_updated_transaction

		# when an entity is deleted, log_removed_transaction
		# TODO: callback, implement log_removed_transaction

		has_many :transactions, as: :loggable
	end

	def log_added_transaction
		self.transactions.create(student_id: self.student.id, 
			message: self.added_message, action: "Added")
	end
end