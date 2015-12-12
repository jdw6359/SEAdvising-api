class CreateCoOp < ActiveRecord::Migration
  def change
    create_table :co_ops do |t|
    	t.integer :student_id
    	t.string :term
    	t.integer :weeks
    	t.boolean :exception
    	t.timestamps
    end
  end
end
