class Label < ActiveRecord::Base
  validates :name, uniqueness: true
end