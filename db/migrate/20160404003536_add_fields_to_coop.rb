class AddFieldsToCoop < ActiveRecord::Migration
  def change
  	add_column :coops, :weeks, :integer
  	add_column :coops, :term, :string
  end
end
