class RemoveCopInFieldsFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :cop_in
    remove_column :students, :cop_in_effective_term
  end
end
