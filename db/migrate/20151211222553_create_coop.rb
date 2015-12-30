class CreateCoop < ActiveRecord::Migration
  def change
    create_table :coops do |t|
    	t.integer :student_id
    	t.string :company_name
    	
    	t.timestamps
    end
  end
end
