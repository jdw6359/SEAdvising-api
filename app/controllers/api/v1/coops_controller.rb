class Api::V1::CoopsController < ApplicationController

	#set the student before the create method is invoked
	before_action :set_student, only: [:create]

	def create
		@student.coops.create(coop_params)
		render json: {}, status: 200
	end

	private
	def set_student
		@student = Student.find(params[:student_id])
	end

	def coop_params
		params.require(:coop).permit(:company_name)
	end
end