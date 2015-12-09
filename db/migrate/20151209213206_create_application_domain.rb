class CreateApplicationDomain < ActiveRecord::Migration
  def change
    create_table :application_domains do |t|
    	t.integer :student_id
    	t.string :name
    	t.boolean :custom, default: false
			t.datetime :approval_date
			t.string :class_1
			t.string :class_2
			t.string :class_3
			t.boolean :class_1_complete, default: false
			t.boolean :class_2_complete, default: false
			t.boolean :class_3_complete, default: false
			t.boolean :fulfilled, default: false
    	t.timestamps
    end
  end
end
