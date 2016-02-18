class AddLabelsToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :red_flag_label, :boolean, null: false, default: false
  	add_column :students, :event_attendee_label, :boolean, null: false, default: false
  end
end
