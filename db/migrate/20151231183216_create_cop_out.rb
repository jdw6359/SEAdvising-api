class CreateCopOut < ActiveRecord::Migration
  def change
    create_table :cop_outs do |t|
    	t.integer :student_id
    	t.string :code
    	t.string :new_plan
    	t.string :effective_term
    	t.string :application_status

    	t.timestamps
    end
  end
end
