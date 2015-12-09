class CreateProgramChange < ActiveRecord::Migration
  def change
    create_table :program_changes do |t|
    	t.integer :student_id
    	t.string :previous_program
    	t.datetime :application_date
    	t.boolean :essay_complete, default: false
    	t.boolean :accepted, default: false
    	t.timestamps
    end
  end
end
