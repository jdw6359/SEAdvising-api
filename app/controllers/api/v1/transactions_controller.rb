class Api::V1::TransactionsController < ApplicationController

	before_action :set_student, only: [:index]

	# This method will be invoked from multiple locations.
	# If no student_id has been provided in the route, then return ALL transactions
	# If a student_id has been provided in the route, then return all of a
	# student's transactions
	# GET @ /api/v1/transactions
	# GET @ /api/v1/student/:student_id/transactions
	def index
		if @student
			@transactions = @student.transactions.order(created_at: :desc)
		else
			@transactions = Transaction.all.order(created_at: :desc)
		end
		render json: @transactions, include: [:student]
	end

	def set_student
		if(params[:student_id])
			@student = Student.find(params[:student_id])
		end
	end
end