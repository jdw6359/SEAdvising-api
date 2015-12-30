class AddCopInToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :cop_in, :boolean, default: false
  	add_column :students, :cop_in_effective_term, :string
  end
end
