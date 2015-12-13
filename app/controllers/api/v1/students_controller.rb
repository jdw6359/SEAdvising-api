class Api::V1::StudentsController < ApplicationController

	def index
		@students = Student.all
		render json: @students
	end

	def show
		@student = Student.find(params[:id])
		if @student
			render json: @student
		else
			render json: {errors: "Student Not Found"}, status: 422
		end
	end
	
end