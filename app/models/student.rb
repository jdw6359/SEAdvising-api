class Student < ActiveRecord::Base
	has_one :program_change
	has_one :application_domain
	validates_uniqueness_of :email

	after_create :create_application_domain

	private
	def create_application_domain
		self.application_domain = ApplicationDomain.create
	end
end