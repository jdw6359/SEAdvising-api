class Post < ActiveRecord::Base
	belongs_to :user

	validates :message, presence: true
	validates :user, presence: true
end