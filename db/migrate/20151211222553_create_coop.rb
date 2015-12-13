class CreateCoop < ActiveRecord::Migration
  def change
    create_table :coops do |t|
    	t.integer :student_id
    	t.string :term
    	t.integer :weeks
    	t.boolean :exception
    	t.timestamps
    end
  end
end
