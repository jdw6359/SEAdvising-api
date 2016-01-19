class User < ActiveRecord::Base
	
	has_secure_password

	has_many :posts

	validates_presence_of :first_name, :last_name, :email, :password
	validates_uniqueness_of :email

	#TODO: Investigate why password digest is still being returned as JSON
	#Override the json representation of User
	def to_json(options={})
		options[:except] ||= [:password_digest]
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