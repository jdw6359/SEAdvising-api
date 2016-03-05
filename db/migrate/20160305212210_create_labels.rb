class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
    	t.string :name
    	t.text :description
    	t.string :color

    	t.timestamps
    end
  end
end
