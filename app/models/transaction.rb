class Transaction < ActiveRecord::Base
	belongs_to :loggable, polymorphic: true
	belongs_to :student
end