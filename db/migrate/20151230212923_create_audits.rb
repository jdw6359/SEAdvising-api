class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
    	t.integer :student_id
    	t.integer :advisor_id
    	t.datetime :date_performed
    	t.text :comment

    	t.timestamps
    end
  end
end
