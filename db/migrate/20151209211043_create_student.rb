class CreateStudent < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :email
    	t.string :first_name
    	t.string :last_name
    	t.integer :year_level
    	t.boolean :in_program, default: true

    	t.timestamps
    end
  end
end
