class User < ActiveRecord::Base
	
	before_create :generate_auth_token!

	has_secure_password

	validates :authentication_token, uniqueness: true

	def generate_auth_token!
		begin
			self.authentication_token = Devise.friendly_token
		end while self.class.exists?(authentication_token: authentication_token)
	end
end