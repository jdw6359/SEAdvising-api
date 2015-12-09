class User < ActiveRecord::Base
	
	has_secure_password

	validates_uniqueness_of :email

	#Override the json representation of User
	def to_json(options={})
		options[:except] ||= [:password]
		super(options)
	end

	def generate_password_reset_token!
		update_attribute(:password_reset_token, SecureRandom.urlsafe_base64(48))
	end

	def generate_auth_token
		payload = {user_id: self.id}
		AuthToken.encode(payload)
	end

end