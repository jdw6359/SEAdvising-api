class Api::V1::SessionsController < ApplicationController

	def create
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			#generate a new authentication_token on the user
			@user.generate_authentication_token!
			@user.save

			render json: @user
		else
			render json: {errors: "Invalid Email or Password"}, status: 422
		end
	end

	def destroy
	end

end