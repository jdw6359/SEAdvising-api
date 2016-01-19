class Api::V1::PostsController < ApplicationController

	#skip_before_filter :authenticate_request

	def index
		@posts = Post.includes(:user).all
		render json: @posts, include: [:user]
	end
end