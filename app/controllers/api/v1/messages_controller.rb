class Api::V1::MessagesController < ApplicationController

	skip_before_filter :authenticate_request

	def index
		@messages = Message.includes(:user).all
		render json: @messages, include: [:user]
	end

end