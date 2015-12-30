class Audit < ActiveRecord::Base
	belongs_to :student
	belongs_to :advisor
end