class Api::V1::AuditsController < ApplicationController

	#set the student before the create method is invoked
	before_action :set_student, only: [:create]

	def create
		binding.pry
	end

	private
	def set_student

		binding.pry

		@student = Student.find(params[:student_id])
	end

	def audit_params
		params.require(:student).permit(:student_id, :advisor_id, :date_performed, :comment)
	end

end