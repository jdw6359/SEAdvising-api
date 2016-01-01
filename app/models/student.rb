class Student < ActiveRecord::Base
	belongs_to :advisor
	has_one :cop_out
	has_many :coops
	has_many :audits

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email
end