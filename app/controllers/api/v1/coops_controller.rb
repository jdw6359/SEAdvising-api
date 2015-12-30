class Api::V1::CoopsController < ApplicationController

	#set the student before the create method is invoked
	before_action :set_student, only: [:create]

	def create
		@student.coops.create(coop_params)
		render json: {}, status: 200
	end

	def destroy
		coop = Coop.find params[:id]
		if coop.destroy!
			render json: {}, status: 200
		end
		#TODO: handle failure case
	end

	private
	def set_student
		@student = Student.find(params[:student_id])
	end

	def coop_params
		params.require(:coop).permit(:company_name)
	end
end