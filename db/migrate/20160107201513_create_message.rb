class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer :user_id, index: true
    	t.string :message
    	t.timestamps
    end
  end
end
