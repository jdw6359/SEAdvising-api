class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
    	t.integer :advisor_id
    	t.integer :student_id
    	t.datetime :meeting_time
    	t.boolean :attended, default: false
    	t.timestamps
    end
  end
end
