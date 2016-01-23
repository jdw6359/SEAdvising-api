class Api::V1::SeniorProjectsController < ActionController::Base

	before_action :set_student, only: [:create]

	def create
		binding.pry
		@student.senior_project = @student.create_senior_project(senior_project_params)
	end

	private
	def senior_project_params
		#params.require(:senior_project)
	end

	def set_student
		binding.pry
		@student = Student.find(params[:student_id])
	end
end