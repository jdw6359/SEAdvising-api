class Transaction < ActiveRecord::Base
	belongs_to :loggable, polymorphic: true
end