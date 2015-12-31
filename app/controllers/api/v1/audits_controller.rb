class Api::V1::AuditsController < ApplicationController

	#set the student before the create method is invoked
	before_action :set_student, only: [:create]

	def create
		@student.audits.create(audit_params)
		render json: {}, status: 200
	end

	private
	def set_student
		@student = Student.find(params[:student_id])
	end

	def audit_params
		params.require(:audit)
			.permit(:date_performed, :comment)
			.merge(:advisor_id => @current_user.id)
	end
end