class CreateChangeProgramOut < ActiveRecord::Migration
  def change
    create_table :change_program_out do |t|
    	t.integer :student_id
    	t.string :code
        t.string :new_plan
        t.string :effective_term
        t.string :status
    	t.timestamps
    end
  end
end
