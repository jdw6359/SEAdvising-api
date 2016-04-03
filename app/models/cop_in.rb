class CopIn < ActiveRecord::Base
  include Loggable

  belongs_to :student

  def added_message
    "FIX ME: Write Cop In Added Message"
  end

  def updated_message
    "FIX ME: Write Cop In Updated Message"
  end

  def removed_message
    "FIX ME: Write Cop In Removed Message"
  end
end