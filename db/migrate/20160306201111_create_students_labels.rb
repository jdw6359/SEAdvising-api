class CreateStudentsLabels < ActiveRecord::Migration
  def change
    create_table :labels_students, id: false do |t|
    	t.belongs_to :label, index: true
    	t.belongs_to :student, index: true
    end
  end
end
