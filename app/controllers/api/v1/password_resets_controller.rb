class Api::V1::PasswordResetsController < ApplicationController

	skip_before_action :authenticate_request

	def create
		user = User.find_by(email: params[:email])

		if user
			user.generate_password_reset_token!

			# TODO: send email to user, provide password reset link

			# TODO: remove password_reset_token from being sent to user
			render json: {password_reset_token: user.password_reset_token}
		else
			render json: {errors: "Invalid Email"}, status: 422
		end
	end


	def show
		# TODO: Implement method

		# Find user by password_reset_token (from params[:id])
		# Return user as json
	end


	def update
		# TODO: Implement method
	end
end