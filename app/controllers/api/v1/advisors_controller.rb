class Api::V1::AdvisorsController < ApplicationController

	skip_before_action :authenticate_request

	def index
		@advisors = Advisor.all

		#TODO: find out how to globalize the exclusion of :password_digest
		render json: @advisors, :except => [:password_digest]
	end
end