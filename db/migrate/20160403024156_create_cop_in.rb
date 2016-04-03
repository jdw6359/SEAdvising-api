class CreateCopIn < ActiveRecord::Migration
  def change
    create_table :cop_ins do |t|
      t.integer :student_id
      t.string :effective_term
      t.string :former_plan

      t.timestamps
    end
  end
end
