class Api::V1::CopOutsController < ApplicationController

	before_action :set_student, only: [:create]

	def create
		@student.cop_out = @student.create_cop_out(cop_out_params)
	end

	private
	def set_student
		@student = Student.find(params[:student_id])
	end

	def cop_out_params
		params.require(:cop_out).permit(:code, :new_plan, :effective_term, :application_status)
	end
end