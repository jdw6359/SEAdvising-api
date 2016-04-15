class Student < ActiveRecord::Base
	belongs_to :advisor
	has_one :program_detail
	has_one :cop_out
	has_one :cop_in
	has_one :senior_project
	has_many :coops
	has_many :audits

	has_many :transactions
	has_many :notes

	has_and_belongs_to_many :labels

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email

	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end