class Api::V1::SessionsController < ApplicationController

	skip_before_action :authenticate_request

	def restore
		auth_token = params["authToken"]
		decoded_token = AuthToken.decode(auth_token)
		user = User.find(decoded_token["user_id"])
		if user
			render json: {user: user,
				user_role: user.type,
				auth_token: auth_token}
		else
			render json: {errors: "Session restore failure"}, status: 422
		end
	end

	def create
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			#create a serialized JWT and provide to client
			render json: {user: @user,
				user_role: @user.type, 
				auth_token: @user.generate_auth_token}
		else
			render json: {errors: "Invalid Email or Password"}, status: 422
		end
	end

	def destroy
		#destroy the old serialized JWT
		head 204
	end

end