class AddIndexToTransactionCreatedAt < ActiveRecord::Migration
  def change
  	add_index :transactions, :created_at
  end
end
