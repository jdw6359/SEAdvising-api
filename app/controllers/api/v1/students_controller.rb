class Api::V1::StudentsController < ApplicationController

	#TODO: find out how to globalize the exclusion of user.password_digest
		# see also advisors_controller
	#TODO: find out how to globalize the inclusionof advisor within student
	def index
		@students = Student.includes(:advisor).all
		render json: @students, include: [:advisor]
	end

	#TODO: find out how to globalize the exclusion of user.password_digest	
		# see also advisors_controller
	#TODO: find out how to globalize the inclusion of advisor within student
	def show
		@student = Student.includes(student_associations).find(params[:id])
		if @student
			render json: @student, include: student_associations
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
			:email, :advisor_id, :first_enrolled_term, :expected_graduation,
			:status, :student_type, :com_sub_plan, :cop_in, :cop_in_effective_term)
	end

	# define the related entities to be included in student lookup and json render 
	def student_associations
		[:advisor, :coops]
	end
end