class Api::V1::StudentsController < ApplicationController

	def index
		@students = Student.all
		render json: @students, include: [:advisor]
	end

	def show
		@student = Student.find(params[:id])
		if @student
			render json: @student
		else
			render json: {errors: "Student Not Found"}, status: 422
		end
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			render json: @student, status: :created
		else
			render json: @student.errors, status: 422
		end
	end

	private
	def student_params
		params.require(:student).permit(:first_name, :middle_name, :last_name,
			:email, :advisor_id)
	end
	
end