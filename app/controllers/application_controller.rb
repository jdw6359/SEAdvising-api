class ApplicationController < ActionController::API

  class NotAuthenticatedError < StandardError
  end
  
  class AuthenticationTimeoutError < StandardError
  end

  rescue_from NotAuthenticatedError do
    render json: { error: 'Not Authorized' }, status: :unauthorized
  end

  rescue_from AuthenticationTimeoutError do
    render json: { error: 'Auth token is expired' }, status: 419 # unofficial timeout status code
  end

	before_action :set_current_user, :authenticate_request

	# Prior to any request being handled, open up access control headers
	before_filter :cors_set_access_control_headers

	private
	# Based on the user_id inside the token payload, find the user
	def set_current_user
		if decoded_auth_token
			@current_user ||= User.find(decoded_auth_token[:user_id])
		end
	end

	def authenticate_request
		if auth_token_expired?
			fail AuthenticationTimeoutError
		elsif !@current_user
			fail NotAuthenticatedError
		end
	end

	def decoded_auth_token
		auth_token = request.headers["HTTP_AUTH_TOKEN"]
		@decoded_auth_token ||= AuthToken.decode(auth_token)
	end

	def auth_token_expired?
		decoded_auth_token && decoded_auth_token.expired?
	end

	def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end
end
