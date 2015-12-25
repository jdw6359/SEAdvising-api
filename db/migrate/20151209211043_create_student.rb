class CreateStudent < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.integer :advisor_id
        t.string :email
    	t.string :first_name
        t.string :middle_name
    	t.string :last_name
        t.string :student_type, default: "FR"
        t.string :status, default: "Active"
        t.string :com_sub_plan, default: true
        t.string :first_enrolled_term
        t.string :expected_graduation
        t.datetime :last_audit
    	t.timestamps
    end
  end
end
