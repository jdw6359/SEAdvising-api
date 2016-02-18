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

		# Providing parameter :associations => true indicates that the associated
		# objects determined in :student_associations should be included in the
		# result set.

		# delegates behavior to private class methods
		
		# TODO: find a better way to test truthy params[:associations]
		# (the issue being that params[:associations] is coming in as a string)
		if params[:associations].eql?("true")
			render_student_with_associations
		else
			render_student
		end
	end

	def create
		@student = Student.new(student_label_params)
		if @student.save
			render json: @student, status: :created
		else
			render json: @student.errors, status: 422
		end
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			render json: @student
		else
			render json: @student.errors, status: 422
		end
	end

	# incoming filter will be used to reduce @students
	# based on matching downcased names
	def search
		filter = params[:filter].downcase
		@students = Student.all
		
		# non destructive selection - we want @students to
		# remain cached / intact for subsequent requests
		students = @students.select{|student| 
			student.full_name.downcase.include?(filter)
		}
		render json: students
	end

	private
	def render_student
		@student = Student.find(params[:id])
		if @student
			render json: @student
		else
			render json: {errors: "Student Not Found"}, status: 422
		end
	end

	def render_student_with_associations
		@student = Student.includes(student_associations).find(params[:id])
		if @student
			render json: @student, include: student_associations
		else
			render json: {errors: "Student Not Found"}, status: 422
		end
	end

	def student_params
		params.require(:student).permit(:first_name, :middle_name, :last_name,
			:email, :advisor_id, :first_enrolled_term, :expected_graduation,
			:status, :student_type, :com_sub_plan, :cop_in, :cop_in_effective_term,
			:red_flag_label, :event_attendee_label)
	end

	# define the related entities to be included in student lookup and json render 
	def student_associations
		[:advisor, :cop_out, :coops, :audits, :senior_project]
	end	
end