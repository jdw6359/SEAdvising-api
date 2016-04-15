class ProgramDetail < ActiveRecord::Base
  belongs_to :student

  def added_message
    "FIX ME: Program Details Added"
  end

  def updated_message
    "FIX ME: Program Details updated"
  end

  def removed_message
    "FIX ME: Program Details removed"
  end
end