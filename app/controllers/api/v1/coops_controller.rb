class Api::V1::CoopsController < ApplicationController

	#set the student before #create method is invoked
	before_action :set_student, only: [:create]

	#set the coop before #show or #update methods are invoked
	before_action :set_coop, only: [:show, :update]

	def create
		@student.coops.create(coop_params)
		render json: {}, status: 200
	end

	def show
		render json: @coop
	end

	def update
		if @coop.update_attributes(coop_params)
			render json: {}, status: 200
		else
			render json: { errors: @coop.errors }
		end
	end

	private
	def set_student
		@student = Student.find(params[:student_id])
	end

	def set_coop
		@coop = Coop.find(params[:id])
	end

	def coop_params
		params.require(:coop).permit(:company_name, :term, :weeks)
	end
end