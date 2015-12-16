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
		user = User.find_by(password_reset_token: params[:id])

		#TODO: globalize the to_json serialization
		if user
			render json: {user: user.to_json}
		else
			render json: {errors: "User not found"}, status: 422
		end
	end

	def update
		user = User.find_by(password_reset_token: params[:id])

		#TODO: globalize the to_json serialization
		if user.update_attributes(password_reset_params)
			user.update_attributes({:password_reset_token => nil})

			render json: {user: user.to_json}
		else
			render json: {errors: "Password update unsuccessful"}, status: 422
		end
	end

	private
	def password_reset_params
		params.require(:user).permit(:password, :password_confirmation)
	end
end