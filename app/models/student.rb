class Student < ActiveRecord::Base
	belongs_to :advisor
	has_many :coops

	validates_presence_of :email, :first_name, :last_name
	validates_uniqueness_of :email
end