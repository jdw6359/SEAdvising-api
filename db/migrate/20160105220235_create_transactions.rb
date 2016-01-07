class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.integer :student_id
    	t.string :message
    	t.integer :loggable_id
    	t.string :loggable_type
    	t.timestamps
    end

    add_index(:transactions, :student_id)
    add_index(:transactions, :loggable_id)
  end
end
