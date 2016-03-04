class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.integer :student_id, index: true
    	t.integer :advisor_id, index: true
    	t.string :message 

    	t.timestamps
    end
  end
end
