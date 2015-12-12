class Student < ActiveRecord::Base
	has_many :coops

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email
end