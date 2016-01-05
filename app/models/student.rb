class Student < ActiveRecord::Base
	belongs_to :advisor
	has_one :cop_out
	has_many :coops
	has_many :audits

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

end