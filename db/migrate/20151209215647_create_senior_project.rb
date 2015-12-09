class CreateSeniorProject < ActiveRecord::Migration
  def change
    create_table :senior_projects do |t|
    	t.integer :student_id

    	t.timestamps
    end
  end
end
