class AddActionToTransaction < ActiveRecord::Migration
  def change
  	add_column :transactions, :action, :string
  end
end
