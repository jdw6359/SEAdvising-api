module Loggable
	extend ActiveSupport::Concern

	included do
		after_commit :log_transaction

		has_many :transactions, as: :loggable
	end

	def log_transaction
		self.transactions.create(message: self.message)
	end
end