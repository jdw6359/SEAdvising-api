class Student < ActiveRecord::Base
	has_one :program_change
	has_one :application_domain
	has_one :senior_project
	has_many :meetings

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email

	after_create :create_application_domain, :create_senior_project

	private
	def create_application_domain
		self.application_domain = ApplicationDomain.create
	end

	def create_senior_project
		self.senior_project = SeniorProject.create
	end
end