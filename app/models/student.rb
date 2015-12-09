class Student < ActiveRecord::Base

	has_one :program_change

	validates_uniqueness_of :email
end