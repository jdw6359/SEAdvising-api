class Api::V1::TransactionsController < ApplicationController

	def index
		@transactions = Transaction.all.order(created_at: :desc)
		render json: @transactions, include: [:student]
	end
end