class Api::V1::PostsController < ApplicationController

	def index
		@posts = Post.includes(:user).all.order(created_at: :desc)
		render json: @posts, include: [:user]
	end

	def create
		if Post.create(post_params)
			render json: {}, status: 200
		end
	end

	private
	def post_params
		params.require(:post).permit(:message)
			.merge(:user_id => @current_user.id)
	end
end