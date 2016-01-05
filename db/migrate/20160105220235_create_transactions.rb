class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.string :message
    	t.integer :loggable_id
    	t.string :loggable_type
    	t.timestamps
    end
  end
end
